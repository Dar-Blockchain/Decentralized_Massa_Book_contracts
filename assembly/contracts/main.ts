import {
  Address,
  caller,
  Context,
  createEvent,
  generateEvent,
  Storage,
  timestamp,
} from '@massalabs/massa-as-sdk';
import {
  Args,
  bytesToString,
  serializableObjectsArrayToBytes,
  stringToBytes,
} from '@massalabs/as-types';
import { _setOwner, OWNER_KEY } from './utils/ownership-internal';
import { onlyOwner, setOwner } from './utils/ownership';
import { Profile } from '../structs/profile';
import {
  COMMENT_ID_KEY,
  commentRepliesMap,
  commentsMap,
  LIKE_ID_KEY,
  likesMap,
  POST_ID_KEY,
  postCommentsMap,
  postMap,
  profileKey,
  REPOST_ID_KEY,
} from './storage';
import { Post } from '../structs/post';
import { Comment } from '../structs/comment';
import { Repost } from '../structs/repost';
import { Like } from '../structs/like';

const START_POST_ID = 1;
const START_LIKE_ID = 1;
const START_COMMENT_ID = 1;

/**
 * This function is meant to be called only one time: when the contract is deployed.
 *
 * @param binaryArgs - Arguments serialized with Args
 */
export function constructor(binaryArgs: StaticArray<u8>): void {
  // If you remove this check, someone could call your constructor function and reset your smart contract.
  assert(Context.isDeployingContract());

  const admin = Context.caller().toString();

  // set the contract owner
  setOwner(new Args().add(admin).serialize());

  Storage.set(POST_ID_KEY, START_POST_ID.toString());
  Storage.set(LIKE_ID_KEY, START_LIKE_ID.toString());
  Storage.set(COMMENT_ID_KEY, START_COMMENT_ID.toString());

  // generate the event for the contract  deployment
  generateEvent(createEvent('ContractDeployed', [admin]));
}

/**
 * change the  contract owner.
 * @param binaryArgs - serialized strings representing the new owner.
 * @remarks This function is only callable by the collection owner.
 */
export function transferOwnership(binaryArgs: StaticArray<u8>): void {
  onlyOwner();

  const args = new Args(binaryArgs);
  const oldOwner = Storage.get(OWNER_KEY);
  const newOwner = args.nextString().unwrap();
  setOwner(new Args().add(newOwner).serialize());
  generateEvent(createEvent('TransferOwnership', [oldOwner, newOwner]));
}

export function _getProfile(address: Address): Profile {
  const profile = profileKey.get(address.toString(), new Profile());

  return profile;
}

export function getProfile(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);

  const userAddress = args.nextString().unwrap();

  const profile = _getProfile(new Address(userAddress));

  return profile.serialize();
}

export function updateProfile(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const profile = args.nextSerializable<Profile>().unwrap();

  const userAddress = profile.address;

  assert(
    caller().toString() == userAddress.toString() ||
      caller().toString() == Storage.get(OWNER_KEY),
    'Caller does not have permission to update this profile',
  );

  profileKey.set(userAddress.toString(), profile);

  generateEvent(createEvent('UpdateProfile', [userAddress.toString()]));
}

export function createPost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);

  // make sure the user has a profile
  const profile = _getProfile(caller());

  assert(
    profile.address.toString() == caller().toString(),
    'User has no profile. Please create a profile first.',
  );

  const text = args.nextString().unwrap();
  const image = args.nextString().unwrap();
  const createdAt = timestamp();

  const postId = u64.parse(Storage.get(POST_ID_KEY));

  const post = new Post(postId, caller(), text, image, false, 0, createdAt);

  postMap.set(postId.toString(), post);

  Storage.set(POST_ID_KEY, (postId + 1).toString());

  generateEvent(
    createEvent('CreatePost', [
      post.id.toString(),
      post.author.toString(),
      post.text,
      post.image,
      post.createdAt.toString(),
    ]),
  );
}

export function updatePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);

  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));

  const postId = args.nextU64().unwrap();
  const text = args.nextString().unwrap();
  const image = args.nextString().unwrap();

  assert(postId < lastPostId, 'Post not found');

  let post = postMap.get(postId.toString(), new Post());

  assert(
    post.author.toString() == caller().toString() ||
      post.author.toString() == Storage.get(OWNER_KEY),
    'User has no permission to update this post',
  );

  post.text = text;
  post.image = image;

  postMap.set(postId.toString(), post);

  generateEvent(createEvent('UpdatePost', [postId.toString(), text, image]));
}

export function repostPost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const originalPostId = args.nextU64().unwrap();
  const userAddress = caller().toString();

  assert(
    postMap.contains(originalPostId.toString()),
    'Original post not found',
  );

  // Check if the user has already reposted this post
  const userRepostedPostsIds = _getUserRepostedPostsIds(userAddress);

  assert(
    userRepostedPostsIds.indexOf(originalPostId) < 0,
    'User has already reposted this post',
  );

  // craete new post with isRepost = true
  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));

  const originalPost = postMap.get(originalPostId.toString(), new Post());

  const repost = new Post(
    lastPostId,
    caller(),
    originalPost.text,
    originalPost.image,
    true,
    originalPostId,
    timestamp(),
  );

  postMap.set(lastPostId.toString(), repost);

  Storage.set(POST_ID_KEY, (lastPostId + 1).toString());

  generateEvent(
    createEvent('RepostPost', [
      repost.id.toString(),
      originalPostId.toString(),
      repost.author.toString(),
    ]),
  );
}

export function deletePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();

  assert(postMap.contains(postId.toString()), 'Post not found');

  const post = postMap.get(postId.toString(), new Post());

  assert(
    post.author.toString() == caller().toString() ||
      Storage.get(OWNER_KEY) == caller().toString(),
    'Caller has no permission to delete this post',
  );

  postMap.delete(postId.toString());

  generateEvent(
    createEvent('DeletePost', [postId.toString(), caller().toString()]),
  );
}

export function getPosts(): StaticArray<u8> {
  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));
  let posts: Post[] = [];

  for (let i = u64(START_POST_ID); i < lastPostId; i++) {
    const post = postMap.get(i.toString(), new Post());
    posts.push(post);
  }

  return new Args().addSerializableObjectArray<Post>(posts).serialize();
}

export function getUserPosts(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);

  const userAddress = args.nextString().unwrap();

  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));

  let posts: Post[] = [];

  for (let i = u64(START_POST_ID); i < lastPostId; i++) {
    const post = postMap.get(i.toString(), new Post());

    if (post.author.toString() == userAddress) {
      posts.push(post);
    }
  }

  return new Args().addSerializableObjectArray<Post>(posts).serialize();
}

export function getPost(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));

  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();

  assert(postId < lastPostId, 'Post not found');

  const post = postMap.get(postId.toString(), new Post());

  return post.serialize();
}

export function getUserRepostedPosts(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();

  const userRepostedPosts = _getUserRepostedPosts(userAddress);

  return new Args()
    .addSerializableObjectArray<Post>(userRepostedPosts)
    .serialize();
}

export function likePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  const userAddress = caller().toString();

  const lastLikeId = u64.parse(Storage.get(LIKE_ID_KEY));

  // Ensure the post exists
  assert(postMap.contains(postId.toString()), 'Post not found');

  // Ensure the user hasn't already liked the post
  let alreadyLiked = false;

  for (let i = u64(START_LIKE_ID); i < lastLikeId; i++) {
    const like = likesMap.get(i, new Like());

    if (like.userAddress.toString() == userAddress && like.postId == postId) {
      alreadyLiked = true;
      break;
    }
  }

  assert(!alreadyLiked, 'User has already liked this post');

  // Create a new like
  const like = new Like(
    lastLikeId,
    new Address(userAddress),
    postId,
    timestamp(),
  );

  likesMap.set(lastLikeId, like);

  Storage.set(LIKE_ID_KEY, (lastLikeId + 1).toString());

  // Generate an event
  generateEvent(createEvent('LikePost', [userAddress, postId.toString()]));
}

  


export function addPostComment(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  const text = args.nextString().unwrap();
  const parentCommentIdOpt = args.nextU64(); // Optional parent comment ID

  assert(postMap.contains(postId.toString()), 'Post not found');

  const commentId = u64.parse(Storage.get(COMMENT_ID_KEY));

  let parentId: u64 = U64.MAX_VALUE;

  if (!parentCommentIdOpt.isErr()) {
    const parentCommentId = parentCommentIdOpt.unwrap();
    assert(commentsMap.contains(parentCommentId), 'Parent comment not found');
    parentId = parentCommentId;
  }

  const comment = new Comment(commentId, caller(), text, timestamp(), parentId);

  // Store the comment
  commentsMap.set(commentId, comment);

  if (parentId === u64.MAX_VALUE) {
    // Top-level comment on a post
    let postComments = postCommentsMap.get(postId, new Array<string>());
    postComments.push(commentId.toString());
    postCommentsMap.set(postId, postComments);
  } else {
    // Reply to a comment
    let commentReplies = commentRepliesMap.get(parentId, new Array<string>());
    commentReplies.push(commentId.toString());
    commentRepliesMap.set(parentId, commentReplies);
  }

  // Increment the COMMENT_ID_KEY
  Storage.set(COMMENT_ID_KEY, (commentId + 1).toString());

  generateEvent(
    createEvent('CommentAdded', [
      postId.toString(),
      commentId.toString(),
      caller().toString(),
      text,
      comment.createdAt.toString(),
      parentId !== null ? parentId.toString() : 'null',
    ]),
  );
}

export function getPostComments(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();

  assert(postMap.contains(postId.toString()), 'Post not found');

  const commentIds = postCommentsMap.get(postId, new Array<string>());
  let commentsArray: Comment[] = [];

  for (let i = 0; i < commentIds.length; i++) {
    const commentId = commentIds[i];
    const comment = commentsMap.get(u64.parse(commentId), new Comment());
    commentsArray.push(comment);
  }

  return new Args()
    .addSerializableObjectArray<Comment>(commentsArray)
    .serialize();
}

export function getCommentReplies(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const commentId = args.nextU64().unwrap();

  assert(commentsMap.contains(commentId), 'Comment not found');

  const replyIds = commentRepliesMap.get(commentId, new Array<string>());
  let repliesArray: Comment[] = [];

  for (let i = 0; i < replyIds.length; i++) {
    const replyId = replyIds[i];
    const reply = commentsMap.get(u64.parse(replyId), new Comment());
    repliesArray.push(reply);
  }

  return new Args()
    .addSerializableObjectArray<Comment>(repliesArray)
    .serialize();
}

function _getUserRepostedPosts(userAddress: string): Post[] {
  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));

  let repostedPosts: Post[] = [];

  for (let i = u64(START_POST_ID); i < lastPostId; i++) {
    const post = postMap.get(i.toString(), new Post());
    if (
      post.author.toString() == userAddress &&
      post.isRepost == true &&
      post.repostedPostId > 0
    ) {
      repostedPosts.push(post);
    }
  }

  return repostedPosts;
}

function _getUserRepostedPostsIds(userAddress: string): u64[] {
  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));

  let repostedPosts: u64[] = [];

  for (let i = u64(START_POST_ID); i < lastPostId; i++) {
    const post = postMap.get(i.toString(), new Post());
    if (
      post.author.toString() == userAddress &&
      post.isRepost == true &&
      post.repostedPostId > 0
    ) {
      repostedPosts.push(post.repostedPostId);
    }
  }

  return repostedPosts;
}
