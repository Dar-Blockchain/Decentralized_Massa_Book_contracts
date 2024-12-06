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
  _builduserFollowsKey,
  COMMENT_ID_KEY,
  commentsMap,
  FOLLOW_ID_KEY,
  followsMap,
  LIKE_ID_KEY,
  likesMap,
  POST_ID_KEY,
  postMap,
  profileMap,
  usersFollowsMap,
} from './storage';
import { Post } from '../structs/post';
import { Comment } from '../structs/comment';
import { Like } from '../structs/like';
import { Follow } from '../structs/follow';

const START_POST_ID = 1;
const START_LIKE_ID = 1;
const START_COMMENT_ID = 1;
const START_FOLLOW_ID = 1;

/**
 * This function is meant to be called only one time: when the contract is deployed.
 *
 * @param binaryArgs - Arguments serialized with Args
 * @remarks
 * This function initializes the owner, sets up storage keys, and emits a deployment event.
 * It can only be called during the deployment phase.
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
  Storage.set(FOLLOW_ID_KEY, START_FOLLOW_ID.toString());

  // generate the event for the contract  deployment
  generateEvent(createEvent('ContractDeployed', [admin]));
}

/**
 * Transfers the ownership of the contract to a new owner.
 * @param binaryArgs - Serialized arguments containing the new owner address.
 *  Arguments:
 *    - newOwner (string): Address of the new owner.
 * @remarks
 * This function can only be called by the current owner of the contract.
 * It updates the owner in storage and emits an event for ownership transfer.
 */
export function transferOwnership(binaryArgs: StaticArray<u8>): void {
  onlyOwner();

  const args = new Args(binaryArgs);
  const oldOwner = Storage.get(OWNER_KEY);
  const newOwner = args.nextString().unwrap();
  setOwner(new Args().add(newOwner).serialize());
  generateEvent(createEvent('TransferOwnership', [oldOwner, newOwner]));
}

/**
 * Fetches the profile of a user as a serialized object.
 * @param binaryArgs - Serialized arguments containing the user address.
 *  Arguments:
 *    - userAddress (string): Address of the user whose profile is being retrieved.
 * @returns The serialized profile data.
 * @remarks
 * The returned profile can be deserialized for further usage.
 */
export function getProfile(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);

  const userAddress = args.nextString().unwrap();

  const profile = profileMap.get(userAddress, new Profile());

  return profile.serialize();
}

/**
 * Updates the profile of a user.
 * @param binaryArgs - Serialized arguments containing the updated profile data.
 *  Arguments:
 *    - profile (Profile): The updated profile object.
 * @remarks
 * This function can only be called by the profile owner or the contract owner.
 * It overwrites the existing profile in storage and emits an event for profile updates.
 */
export function updateProfile(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const profile = args.nextSerializable<Profile>().unwrap();

  const userAddress = profile.address;

  assert(
    caller().toString() == userAddress.toString() ||
      caller().toString() == Storage.get(OWNER_KEY),
    'Caller does not have permission to update this profile',
  );

  profileMap.set(userAddress.toString(), profile);

  generateEvent(createEvent('UpdateProfile', [userAddress.toString()]));
}

export function followProfile(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();

  assert(
    caller().toString() == userAddress.toString(),
    'Caller does not have permission.',
  );

  const profile = profileMap.get(userAddress.toString(), new Profile());

  assert(
    profile.address.toString() == userAddress.toString(),
    'Profile does not exist.',
  );

  const lastFollowId = u64.parse(Storage.get(FOLLOW_ID_KEY));

  const usersFollowsKey = _builduserFollowsKey(
    caller().toString(),
    userAddress,
  );

  // check if the user is already following the profile
  const usersFollowsId = usersFollowsMap.get(usersFollowsKey, u64(0));

  const isFollowing = usersFollowsId > u64(0);

  assert(!isFollowing, 'User is already following this profile.');

  // create a new follow entry
  const follow = new Follow(
    lastFollowId,
    caller(),
    new Address(userAddress),
    timestamp(),
  );

  // add the follow entry to the map
  followsMap.set(lastFollowId, follow);

  usersFollowsMap.set(usersFollowsKey, lastFollowId);

  // update the last follow ID
  Storage.set(FOLLOW_ID_KEY, (lastFollowId + 1).toString());

  // emit the follow event
  generateEvent(
    createEvent('FollowProfile', [
      follow.follower.toString(),
      follow.followed.toString(),
      follow.createdAt.toString(),
    ]),
  );
}

export function unfollowProfile(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();

  const usersFollowsKey = _builduserFollowsKey(
    caller().toString(),
    userAddress,
  );

  // check if the user is following the profile
  const userFollowsId = usersFollowsMap.get(usersFollowsKey, u64(0));

  const isFollowing = userFollowsId > u64(0);

  assert(isFollowing, 'User is not following this profile.');

  // delete the follow entry from the map
  usersFollowsMap.delete(usersFollowsKey);
  followsMap.delete(userFollowsId);

  // emit the unfollow event
  generateEvent(
    createEvent('UnfollowProfile', [
      caller().toString(),
      userAddress,
      timestamp().toString(),
    ]),
  );
}

export function getAllUserFollowers(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();

  const lastFollowId = u64.parse(Storage.get(FOLLOW_ID_KEY));

  let followers: Follow[] = [];

  for (let i = u64(START_FOLLOW_ID); i < lastFollowId; i++) {
    const follow = followsMap.get(i, new Follow());
    if (follow.followed.toString() == userAddress) {
      followers.push(follow);
    }
  }

  return new Args().addSerializableObjectArray<Follow>(followers).serialize();
}

export function getAllUserFollowings(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();

  const lastFollowId = u64.parse(Storage.get(FOLLOW_ID_KEY));

  let followings: Follow[] = [];

  for (let i = u64(START_FOLLOW_ID); i < lastFollowId; i++) {
    const follow = followsMap.get(i, new Follow());
    if (follow.follower.toString() == userAddress) {
      followings.push(follow);
    }
  }

  return new Args().addSerializableObjectArray<Follow>(followings).serialize();
}

/**
 * Creates a new post in the contract.
 * @param binaryArgs - Serialized arguments containing post details.
 *  Arguments:
 *    - text (string): The content of the post.
 *    - image (string): An image URL for the post.
 * @remarks
 * The user must have an existing profile to create a post.
 * The post ID is auto-incremented and stored in the contract's storage.
 */
export function createPost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);

  // make sure the user has a profile
  const profile = profileMap.get(caller().toString(), new Profile());

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

/**
 * Updates an existing post in the contract.
 * @param binaryArgs - Serialized arguments containing updated post details.
 *  Arguments:
 *    - postId (u64): The ID of the post to update.
 *    - text (string): The updated content of the post.
 *    - image (string): The updated image URL for the post.
 * @remarks
 * Only the post author or contract owner can update a post.
 */
export function updatePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);

  const postId = args.nextU64().unwrap();
  const text = args.nextString().unwrap();
  const image = args.nextString().unwrap();

  assert(postMap.contains(postId.toString()), 'Post does not exist');

  let post = postMap.get(postId.toString(), new Post());

  assert(post.id == postId, 'Post does not exist');

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

/**
 * Reposts an existing post.
 * @param binaryArgs - Serialized arguments containing the original post ID.
 *  Arguments:
 *    - originalPostId (u64): The ID of the post to be reposted.
 * @remarks
 * This function creates a new post with `isRepost` set to `true`.
 * A user cannot repost the same post more than once.
 */
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

/**
 * Deletes a post from the contract.
 * @param binaryArgs - Serialized arguments containing the post ID.
 *  Arguments:
 *    - postId (u64): The ID of the post to be deleted.
 * @remarks
 * Only the post author or contract owner can delete a post.
 */
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

/**
 * Retrieves all posts in the contract.
 * @returns Serialized array of all posts.
 * @remarks
 * This function fetches all posts from the storage map and serializes them for output.
 */
export function getPosts(): StaticArray<u8> {
  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));
  let posts: Post[] = [];

  for (let i = u64(START_POST_ID); i < lastPostId; i++) {
    const post = postMap.get(i.toString(), new Post());
    posts.push(post);
  }

  return new Args().addSerializableObjectArray<Post>(posts).serialize();
}

/**
 * Retrieves all posts created by a specific user.
 * @param binaryArgs - Serialized arguments containing the user address.
 *  Arguments:
 *    - userAddress (string): The address of the user.
 * @returns Serialized array of the user's posts.
 * @remarks
 * Filters posts based on the author's address.
 */
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

/**
 * Fetches the details of a specific post by its ID.
 * @param binaryArgs - Serialized arguments containing the post ID.
 *  Arguments:
 *    - postId (u64): The ID of the post to retrieve.
 * @returns Serialized data of the requested post.
 * @remarks
 * Throws an error if the post does not exist.
 */
export function getPost(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const lastPostId = u64.parse(Storage.get(POST_ID_KEY));

  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();

  assert(postId < lastPostId, 'Post not found');

  const post = postMap.get(postId.toString(), new Post());

  return post.serialize();
}

/**
 * Retrieves all reposted posts for a specific user as a serialized object.
 * @param binaryArgs - Serialized arguments containing the user address.
 *  Arguments:
 *    - userAddress (string): The address of the user whose reposted posts are to be fetched.
 * @returns A serialized array of reposted posts by the user.
 * @remarks
 * Uses the `_getUserRepostedPosts` helper to fetch the reposted posts and serializes them for output.
 */
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

/**
 * Likes a specific post.
 * @param binaryArgs - Serialized arguments containing the post ID.
 *  Arguments:
 *    - postId (u64): The ID of the post to like.
 * @remarks
 * A user can only like a post once.
 * Emits an event when the post is successfully liked.
 */
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

/**
 * Unlikes a previously liked post.
 * @param binaryArgs - Serialized arguments containing the post ID.
 *  Arguments:
 *    - postId (u64): The ID of the post to unlike.
 * @remarks
 * A user must have previously liked the post to unlike it.
 * Emits an event when the post is successfully unliked.
 */
export function unlikePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);

  const postId = args.nextU64().unwrap();
  const userAddress = caller().toString();

  const lastLikeId = u64.parse(Storage.get(LIKE_ID_KEY));

  assert(postMap.contains(postId.toString()), 'Post not found');

  // ensure user has liked the post
  let alreadyLiked = false;

  let likeId = u64(0);

  for (let i = u64(START_LIKE_ID); i < lastLikeId; i++) {
    const like = likesMap.get(i, new Like());

    if (like.userAddress.toString() == userAddress && like.postId == postId) {
      likeId = i;
      alreadyLiked = true;
      break;
    }
  }

  assert(alreadyLiked, 'User has not liked this post');

  // Unlike the post
  likesMap.delete(likeId);

  // generate an event
  generateEvent(
    createEvent('UnlikePost', [
      likeId.toString(),
      userAddress,
      postId.toString(),
    ]),
  );
}

/**
 * Retrieves all posts liked by a specific user.
 * @param binaryArgs - Serialized arguments containing the user's address.
 *  Arguments:
 *    - userAddress (string): The address of the user whose liked posts are to be fetched.
 * @returns A serialized array of posts liked by the user.
 * @remarks
 * Filters likes based on the user's address and retrieves the corresponding posts.
 */
export function getUserLikedPosts(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();

  let likedPosts: Post[] = [];

  const lastLikeId = u64.parse(Storage.get(LIKE_ID_KEY));

  for (let i = u64(START_LIKE_ID); i < lastLikeId; i++) {
    const like = likesMap.get(i, new Like());

    if (like.userAddress.toString() == userAddress) {
      const post = postMap.get(like.postId.toString(), new Post());
      likedPosts.push(post);
    }
  }

  return new Args().addSerializableObjectArray<Post>(likedPosts).serialize();
}

/**
 * Retrieves all users who liked a specific post.
 * @param binaryArgs - Serialized arguments containing the post ID.
 *  Arguments:
 *    - postId (u64): The ID of the post.
 * @returns A serialized array of user addresses.
 * @remarks
 * Iterates through likes to find users associated with the post ID.
 */
export function getPostLikedUsers(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();

  const lastLikeId = u64.parse(Storage.get(LIKE_ID_KEY));

  let likedUsers: String[] = [];

  for (let i = u64(START_LIKE_ID); i < lastLikeId; i++) {
    const like = likesMap.get(i, new Like());

    if (like.postId == postId) {
      likedUsers.push(like.userAddress.toString());
    }
  }

  return new Args().add(likedUsers).serialize();
}

/**
 * Adds a comment to a post.
 * @param binaryArgs - Serialized arguments containing comment details.
 *  Arguments:
 *    - postId (u64): The ID of the post to comment on.
 *    - text (string): The content of the comment.
 *    - parentCommentId (u64, optional): The ID of the parent comment for replies.
 * @remarks
 * This function supports nested comments by allowing optional parent comment IDs.
 */
export function addPostComment(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  const text = args.nextString().unwrap();
  const parentCommentIdOpt = args.nextU64(); // Optional parent comment ID

  assert(postMap.contains(postId.toString()), 'Post not found');

  const commentId = u64.parse(Storage.get(COMMENT_ID_KEY));

  let parentId: u64 = u64(0);

  if (!parentCommentIdOpt.isErr()) {
    const parentCommentId = parentCommentIdOpt.unwrap();
    assert(commentsMap.contains(parentCommentId), 'Parent comment not found');
    parentId = parentCommentId;
  }

  const comment = new Comment(
    commentId,
    postId,
    caller(),
    text,
    timestamp(),
    parentId,
  );

  // Store the comment
  commentsMap.set(commentId, comment);

  // Increment the COMMENT_ID_KEY
  Storage.set(COMMENT_ID_KEY, (commentId + 1).toString());

  generateEvent(
    createEvent('AddComment', [
      postId.toString(),
      commentId.toString(),
      caller().toString(),
      text,
      comment.createdAt.toString(),
      parentId > u64(0) ? parentId.toString() : 'null',
    ]),
  );
}

/**
 * Retrieves all comments for a specific post.
 * @param binaryArgs - Serialized arguments containing the post ID.
 *  Arguments:
 *    - postId (u64): The ID of the post.
 * @returns Serialized array of comments for the post.
 * @remarks
 * Filters comments based on the associated post ID.
 */
export function getPostComments(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();

  assert(postMap.contains(postId.toString()), 'Post not found');

  const lastCommentId = u64.parse(Storage.get(COMMENT_ID_KEY));

  let commentsArray: Comment[] = [];

  for (let i = u64(0); i < lastCommentId; i++) {
    const commentId = i;
    const comment = commentsMap.get(commentId, new Comment());
    if (comment.postId === postId) {
      commentsArray.push(comment);
    }
  }

  return new Args()
    .addSerializableObjectArray<Comment>(commentsArray)
    .serialize();
}

/**
 * Retrieves all replies to a specific comment.
 * @param binaryArgs - Serialized arguments containing the comment ID.
 *  Arguments:
 *    - commentId (u64): The ID of the parent comment.
 * @returns A serialized array of replies.
 * @remarks
 * Filters comments based on the parent comment ID.
 */
export function getCommentReplies(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const commentId = args.nextU64().unwrap();

  assert(commentsMap.contains(commentId), 'Comment not found');

  const lastCommentId = u64.parse(Storage.get(COMMENT_ID_KEY));
  let repliesArray: Comment[] = [];

  for (let i = u64(0); i < lastCommentId; i++) {
    const comment = commentsMap.get(i, new Comment());
    if (comment.parentId === commentId) {
      repliesArray.push(comment);
    }
  }

  return new Args()
    .addSerializableObjectArray<Comment>(repliesArray)
    .serialize();
}

/**
 * Deletes a comment.
 * @param binaryArgs - Serialized arguments containing the comment ID.
 *  Arguments:
 *    - commentId (u64): The ID of the comment to delete.
 * @remarks
 * Only the comment author or the contract owner can delete a comment.
 */
export function removeComment(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const commentId = args.nextU64().unwrap();

  assert(commentsMap.contains(commentId), 'Comment not found');

  const comment = commentsMap.get(commentId, new Comment());

  assert(
    comment.commenter.toString() == caller().toString() ||
      comment.commenter.toString() == Storage.get(OWNER_KEY),
    'Caller has no permission to delete this comment',
  );

  // Delete the comment
  commentsMap.delete(commentId);
}

/**
 * Retrieves all comments stored in the contract.
 * @returns A serialized array of all comments.
 * @remarks
 * This function iterates through all stored comments and serializes them for output.
 */
export function getAllComments(): StaticArray<u8> {
  const lastCommentId = u64.parse(Storage.get(COMMENT_ID_KEY));

  let commentsArray: Comment[] = [];

  for (let i = u64(0); i < lastCommentId; i++) {
    const commentId = i;
    const comment = commentsMap.get(commentId, new Comment());
    commentsArray.push(comment);
  }

  return new Args()
    .addSerializableObjectArray<Comment>(commentsArray)
    .serialize();
}

/**
 * Retrieves all reposted posts by a specific user.
 * @param userAddress - The address of the user whose reposted posts are to be fetched.
 * @returns An array of `Post` objects that the user has reposted.
 * @remarks
 * This is a helper function that filters reposted posts by the user address.
 * It checks if the post has `isRepost` set to `true` and if the `repostedPostId` is valid.
 */
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

/**
 * Retrieves the IDs of all posts reposted by a specific user.
 * @param userAddress - The address of the user whose reposted post IDs are to be fetched.
 * @returns An array of `u64` IDs representing the posts the user has reposted.
 * @remarks
 * This is a helper function that extracts reposted post IDs by checking if the post
 * has `isRepost` set to `true` and a valid `repostedPostId`.
 */
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
