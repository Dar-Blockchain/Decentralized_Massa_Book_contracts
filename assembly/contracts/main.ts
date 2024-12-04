import {
  Address,
  caller,
  Context,
  createEvent,
  generateEvent,
  Storage,
  timestamp,
} from '@massalabs/massa-as-sdk';
import { Args, stringToBytes } from '@massalabs/as-types';
import { _setOwner, OWNER_KEY } from './utils/ownership-internal';
import { onlyOwner, setOwner } from './utils/ownership';
import { Profile } from '../structs/profile';
import {
  COMMENT_ID_KEY,
  commentsMap,
  likesMap,
  POST_ID_KEY,
  postCommentsMap,
  postLikedUsers,
  postMap,
  postRepostsMap,
  profileKey,
  REPOST_ID_KEY,
  repostsMap,
  userLikedPosts,
  userReposts,
} from './storage';
import { Post } from '../structs/post';
import { Comment } from '../structs/comment';
import { Repost } from '../structs/repost';

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

  Storage.set(POST_ID_KEY, '0');

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

  // assert(
  //   caller().toString() == userAddress.toString(),
  //   'Caller is not the profile owner',
  // );

  profileKey.set(userAddress.toString(), profile);

  generateEvent(createEvent('UpdateProfile', [userAddress.toString()]));
}

export function getPosts(): StaticArray<u8> {
  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));
  let posts: Post[] = [];

  for (let i = u64(0); i < lastPostId; i++) {
    const post = postMap.get(i.toString(), new Post());
    posts.push(post);
  }

  return new Args().addSerializableObjectArray<Post>(posts).serialize();
}

export function createPost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);

  const text = args.nextString().unwrap();
  const image = args.nextString().unwrap();
  const createdAt = timestamp();

  const postId = u64.parse(Storage.get(POST_ID_KEY));

  const post = new Post(postId, caller(), text, image, createdAt);

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

export function getPost(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));

  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();

  assert(postId < lastPostId, 'Post not found');

  const post = postMap.get(postId.toString(), new Post());

  return post.serialize();
}

export function updatePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);

  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));

  const postId = args.nextU64().unwrap();
  const text = args.nextString().unwrap();
  const image = args.nextString().unwrap();

  assert(postId < lastPostId, 'Post not found');

  let post = postMap.get(postId.toString(), new Post());

  post.text = text;
  post.image = image;

  postMap.set(postId.toString(), post);

  generateEvent(createEvent('UpdatePost', [postId.toString(), text, image]));
}

export function likePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  const userAddress = caller().toString();

  // Ensure the post exists
  assert(postMap.contains(postId.toString()), 'Post not found');

  const likeKey = _getLikeKey(postId, userAddress);

  // Check if the user has already liked the post
  assert(!likesMap.contains(likeKey), 'User has already liked this post');

  // Record the like
  likesMap.set(likeKey, true);

  // Update postLikes mapping
  let likedUsers = postLikedUsers.get(postId, new Array<string>());
  likedUsers.push(userAddress);
  postLikedUsers.set(postId, likedUsers);

  // Update userLikes mapping
  let likedPosts = userLikedPosts.get(userAddress, new Array<string>());
  likedPosts.push(postId.toString());
  userLikedPosts.set(userAddress, likedPosts);

  // Generate an event
  generateEvent(createEvent('LikePost', [userAddress, postId.toString()]));
}

export function getLikedPosts(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();

  const likedPostIds = userLikedPosts.get(userAddress, new Array<string>());

  let likedPosts: Post[] = [];
  for (let i = 0; i < likedPostIds.length; i++) {
    const postId = likedPostIds[i];
    const post = postMap.get(postId.toString(), new Post());
    likedPosts.push(post);
  }

  return new Args().addSerializableObjectArray<Post>(likedPosts).serialize();
}

export function getPostLikes(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();

  const likedUsers = postLikedUsers.get(postId, new Array<string>());

  return new Args().add(likedUsers).serialize();
}

export function unlikePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  const userAddress = caller().toString();

  const likeKey = _getLikeKey(postId, userAddress);

  // Check if the user has liked the post
  assert(likesMap.contains(likeKey), 'User has not liked this post');

  // Remove the like
  likesMap.delete(likeKey);

  // Update postLikes mapping
  let likedUsers = postLikedUsers.get(postId, new Array<string>());
  let userIndex = likedUsers.indexOf(userAddress);
  if (userIndex >= 0) {
    likedUsers.splice(userIndex, 1);
    postLikedUsers.set(postId, likedUsers);
  }

  // Update userLikes mapping
  let likedPosts = userLikedPosts.get(userAddress, new Array<string>());
  let postIndex = likedPosts.indexOf(postId.toString());
  if (postIndex >= 0) {
    likedPosts.splice(postIndex, 1);
    userLikedPosts.set(userAddress, likedPosts);
  }

  // Generate an event
  generateEvent(createEvent('UnlikePost', [userAddress, postId.toString()]));
}

export function addPostComment(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  const text = args.nextString().unwrap();

  assert(postMap.contains(postId.toString()), 'Post not found');

  const commentId = u64.parse(Storage.get(COMMENT_ID_KEY));

  const comment = new Comment(commentId, caller(), text, timestamp());

  commentsMap.set(commentId, comment);

  // Get the existing array of comment IDs for the post
  let postCommentsIds = postCommentsMap.get(postId, new Array<string>());

  // check if the comment already exists
  if (!postCommentsIds.includes(commentId.toString())) {
    postCommentsIds.push(commentId.toString());
    postCommentsMap.set(postId, postCommentsIds);
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
    ]),
  );
}

export function getPostComments(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();

  assert(postMap.contains(postId.toString()), 'Post not found');

  // Get the array of comment IDs for the post
  const commentIds = postCommentsMap.get(postId, new Array<string>());

  // Retrieve the Comment objects from comments mapping
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

export function repostPost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const originalPostId = args.nextU64().unwrap();
  const userAddress = caller().toString();

  assert(
    postMap.contains(originalPostId.toString()),
    'Original post not found',
  );

  // Prevent duplicate reposts
  let userRepostedPosts = userReposts.get(userAddress, new Array<string>());
  assert(
    !userRepostedPosts.includes(originalPostId.toString()),
    'Post already reposted by user',
  );

  const repostId = u64.parse(Storage.get(REPOST_ID_KEY));

  const repost = new Repost(repostId, originalPostId, caller(), timestamp());

  // Store the repost
  repostsMap.set(repostId.toString(), repost);

  // Update postRepostsMap
  let repostIds = postRepostsMap.get(originalPostId, new Array<string>());
  repostIds.push(repostId.toString());
  postRepostsMap.set(originalPostId, repostIds);

  // Update userReposts
  userRepostedPosts.push(originalPostId.toString());
  userReposts.set(userAddress, userRepostedPosts);

  // Increment the REPOST_ID_KEY
  Storage.set(REPOST_ID_KEY, (repostId + 1).toString());

  generateEvent(
    createEvent('PostReposted', [
      repostId.toString(),
      originalPostId.toString(),
      userAddress,
      repost.createdAt.toString(),
    ]),
  );
}

export function getReposts(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const originalPostId = args.nextU64().unwrap();

  assert(
    postMap.contains(originalPostId.toString()),
    'Original post not found',
  );

  const repostIds = postRepostsMap.get(originalPostId, new Array<string>());

  let repostsArray: Repost[] = [];
  for (let i = 0; i < repostIds.length; i++) {
    const repostId = repostIds[i];
    const repost = repostsMap.get(repostId, new Repost());
    repostsArray.push(repost);
  }

  return new Args()
    .addSerializableObjectArray<Repost>(repostsArray)
    .serialize();
}

export function unrepostPost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const originalPostId = args.nextU64().unwrap();
  const userAddress = caller().toString();

  // Check if the user has reposted this post
  let userRepostedPosts = userReposts.get(userAddress, new Array<string>());
  let postIndex = userRepostedPosts.indexOf(originalPostId.toString());
  assert(postIndex >= 0, 'User has not reposted this post');

  // Remove from userReposts
  userRepostedPosts.splice(postIndex, 1);
  userReposts.set(userAddress, userRepostedPosts);

  // Remove from postRepostsMap
  let repostIds = postRepostsMap.get(originalPostId, new Array<string>());
  let repostIdToRemove: string | null = null;
  for (let i = 0; i < repostIds.length; i++) {
    let repostId = repostIds[i];
    let repost = repostsMap.get(repostId, new Repost());
    if (repost.reposter.toString() == userAddress) {
      repostIdToRemove = repostId;
      break;
    }
  }
  assert(repostIdToRemove != null, 'Repost not found');

  // Remove from repostIds array
  let index = repostIds.indexOf(repostIdToRemove!);
  if (index >= 0) {
    repostIds.splice(index, 1);
    postRepostsMap.set(originalPostId, repostIds);
  }

  // Delete the repost from repostsMap
  repostsMap.delete(repostIdToRemove!);

  generateEvent(
    createEvent('PostUnreposted', [
      repostIdToRemove!,
      originalPostId.toString(),
      userAddress,
      timestamp().toString(),
    ]),
  );
}

export function getUserReposts(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();

  let repostedPostIds = userReposts.get(userAddress, new Array<string>());
  let repostedPosts: Post[] = [];
  for (let i = 0; i < repostedPostIds.length; i++) {
    const postId = repostedPostIds[i];
    const post = postMap.get(postId.toString(), new Post());
    repostedPosts.push(post);
  }

  return new Args().addSerializableObjectArray<Post>(repostedPosts).serialize();
}

function _getLikeKey(postId: u64, userAddress: string): string {
  return 'like::' + postId.toString() + '::' + userAddress;
}
