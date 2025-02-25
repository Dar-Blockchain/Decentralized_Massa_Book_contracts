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
  _builduserFollowsKey,
  _buildUserRepostKey,
  COMMENT_ID_KEY,
  commentsMap,
  FOLLOW_ID_KEY,
  followsMap,
  LIKE_ID_KEY,
  likesMap,
  POST_ID_KEY,
  postMap,
  profileMap,
  repostsMap,
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

/* ----------------------------------
   Auxiliary Index Storage Functions
-------------------------------------*/

// Returns the key for storing a user's posts.
function postsKeyForUser(userAddress: string): string {
  return "postsByUser_" + userAddress;
}

// Returns the key for storing a user's followers.
function followersKeyForUser(userAddress: string): string {
  return "followersOf_" + userAddress;
}

/**
 * Append a u64 element to an array stored at a given key.
 * The array is serialized as an Args object.
 */
function appendU64ToStorage(key: string, element: u64): void {
  let serialized = Storage.get(key);
  let arr: u64[] = [];
  if (serialized.length > 0) {
    const args = new Args(serialized);
    arr = args.nextU64Array().unwrap();
  }
  arr.push(element);
  Storage.set(key, new Args().addU64Array(arr).serialize());
}

/**
 * Retrieve an array of u64 from storage at a given key.
 */
function getU64ArrayFromStorage(key: string): u64[] {
  let serialized = Storage.get(key);
  if (serialized.length > 0) {
    const args = new Args(serialized);
    return args.nextU64Array().unwrap();
  }
  return [];
}

/* ----------------------------------
            Contract Setup
-------------------------------------*/

/**
 * Contract constructor. Initializes owner, user profile, and counters.
 */
export function constructor(binaryArgs: StaticArray<u8>): void {
  // Uncomment if you wish to restrict this to deployment phase.
  // assert(Context.isDeployingContract());

  const args = new Args(binaryArgs);
  const userAddress = args.nextString().expect("User address required");
  const firstName = args.nextString().expect("First name required");
  const lastName = args.nextString().expect("Last name required");
  const bio = args.nextString().expect("Bio required");
  const photo = args.nextString().expect("Photo required");
  const country = args.nextString().expect("Country required");
  const city = args.nextString().expect("City required");
  const telegram = args.nextString().expect("Telegram required");
  const xHandle = args.nextString().expect("X handle required");

  // Set the contract owner and create the profile.
  _setOwner(userAddress);
  const profile = new Profile(
    new Address(userAddress),
    firstName,
    lastName,
    bio,
    photo,
    country,
    city,
    telegram,
    xHandle
  );
  profileMap.set(userAddress, profile);

  // Initialize counters.
  Storage.set(POST_ID_KEY, START_POST_ID.toString());
  Storage.set(LIKE_ID_KEY, START_LIKE_ID.toString());
  Storage.set(COMMENT_ID_KEY, START_COMMENT_ID.toString());
  Storage.set(FOLLOW_ID_KEY, START_FOLLOW_ID.toString());

  generateEvent(createEvent('ContractDeployed', [userAddress]));
}

/**
 * Transfers contract ownership.
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
 * Fetches a user profile.
 */
export function getProfile(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();
  const profile = profileMap.get(userAddress, new Profile());
  return profile.serialize();
}

/**
 * Updates a user profile.
 */
export function updateProfile(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const profile = args.nextSerializable<Profile>().unwrap();
  const userAddress = profile.address;
  assert(
    caller().toString() == userAddress.toString() ||
    caller().toString() == Storage.get(OWNER_KEY),
    'Caller does not have permission to update this profile'
  );
  profileMap.set(userAddress.toString(), profile);
  generateEvent(createEvent('UpdateProfile', [userAddress.toString()]));
}

/* ----------------------------------
       Followers & Following
-------------------------------------*/

/**
 * Follows a profile. Updates global maps and auxiliary followers index.
 */
export function followProfile(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();
  const profile = profileMap.get(userAddress, new Profile());
  assert(
    profile.address.toString() == userAddress,
    'Profile does not exist.'
  );
  const lastFollowId = u64.parse(Storage.get(FOLLOW_ID_KEY));
  const usersFollowsKey = _builduserFollowsKey(caller().toString(), userAddress);
  // Ensure caller is not already following.
  const usersFollowsId = usersFollowsMap.get(usersFollowsKey, u64(0));
  assert(usersFollowsId == u64(0), 'User is already following this profile.');
  
  // Create follow entry.
  const follow = new Follow(lastFollowId, caller(), new Address(userAddress), timestamp());
  followsMap.set(lastFollowId, follow);
  usersFollowsMap.set(usersFollowsKey, lastFollowId);
  Storage.set(FOLLOW_ID_KEY, (lastFollowId + 1).toString());
  // Update auxiliary followers list for the followed user.
  appendU64ToStorage(followersKeyForUser(userAddress), lastFollowId);
  
  generateEvent(
    createEvent('FollowProfile', [
      follow.follower.toString(),
      follow.followed.toString(),
      follow.createdAt.toString(),
    ])
  );
}

/**
 * Unfollows a profile.
 */
export function unfollowProfile(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();
  const usersFollowsKey = _builduserFollowsKey(caller().toString(), userAddress);
  const userFollowsId = usersFollowsMap.get(usersFollowsKey, u64(0));
  assert(userFollowsId > u64(0), 'User is not following this profile.');
  usersFollowsMap.delete(usersFollowsKey);
  followsMap.delete(userFollowsId);
  // (Optionally, update the auxiliary followers list to remove the entry)
  generateEvent(
    createEvent('UnfollowProfile', [
      caller().toString(),
      userAddress,
      timestamp().toString(),
    ])
  );
}

/**
 * Retrieves followers for a user with pagination (10 per page).
 */
export function getFollowersPaginated(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();
  const page = args.nextU64().unwrap();
  assert(page > 0, 'Page number must be >= 1');
  
  const followIds: u64[] = getU64ArrayFromStorage(followersKeyForUser(userAddress));
  const start = (page - 1) * 10;
  const end = start + 10;
  let paginated: Follow[] = [];
  
  for (let i = start; i < end && i < followIds.length; i++) {
    let follow = followsMap.get(followIds[i], new Follow());
    paginated.push(follow);
  }
  return new Args().addSerializableObjectArray<Follow>(paginated).serialize();
}

/* ----------------------------------
             Posts
-------------------------------------*/

/**
 * Creates a new post.
 * The post is stored in the global map and its ID appended to the user's posts index.
 */
export function createPost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  // Ensure the caller has a profile.
  const profile = profileMap.get(caller().toString(), new Profile());
  assert(
    profile.address.toString() == caller().toString(),
    'User has no profile. Please create a profile first.'
  );
  const text = args.nextString().unwrap();
  const image = args.nextString().unwrap();
  const createdAt = timestamp();
  const postId = u64.parse(Storage.get(POST_ID_KEY));
  const post = new Post(postId, caller(), text, image, false, 0, createdAt);
  postMap.set(postId.toString(), post);
  Storage.set(POST_ID_KEY, (postId + 1).toString());
  // Update the auxiliary posts list for the user.
  appendU64ToStorage(postsKeyForUser(caller().toString()), postId);
  generateEvent(
    createEvent('CreatePost', [
      post.id.toString(),
      post.author.toString(),
      post.text,
      post.image,
      post.createdAt.toString(),
    ])
  );
}

/**
 * Updates an existing post.
 * Only the author or the contract owner may update a post.
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
    'User has no permission to update this post'
  );
  post.text = text;
  post.image = image;
  postMap.set(postId.toString(), post);
  generateEvent(createEvent('UpdatePost', [postId.toString(), text, image]));
}

/**
 * Deletes a post.
 * Only the author or the contract owner may delete a post.
 */
export function deletePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  assert(postMap.contains(postId.toString()), 'Post not found');
  const post = postMap.get(postId.toString(), new Post());
  assert(
    post.author.toString() == caller().toString() ||
    Storage.get(OWNER_KEY) == caller().toString(),
    'Caller has no permission to delete this post'
  );
  postMap.delete(postId.toString());
  // (Optional: Remove the post ID from the user's auxiliary posts list)
  generateEvent(createEvent('DeletePost', [postId.toString(), caller().toString()]));
}

/**
 * Retrieves posts for a user with pagination (10 posts per page).
 */
export function getUserPostsPaginated(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const userAddress = args.nextString().unwrap();
  const page = args.nextU64().unwrap();
  assert(page > 0, 'Page number must be >= 1');
  
  const postIds: u64[] = getU64ArrayFromStorage(postsKeyForUser(userAddress));
  const start = (page - 1) * 10;
  const end = start + 10;
  let postsPage: Post[] = [];
  
  for (let i = start; i < end && i < postIds.length; i++) {
    let post = postMap.get(postIds[i].toString(), new Post());
    postsPage.push(post);
  }
  return new Args().addSerializableObjectArray<Post>(postsPage).serialize();
}

/* ----------------------------------
             Likes
-------------------------------------*/

/**
 * Likes a post.
 * Ensures that a user can only like a post once.
 */
export function likePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  const userAddress = caller().toString();
  const lastLikeId = u64.parse(Storage.get(LIKE_ID_KEY));
  
  assert(postMap.contains(postId.toString()), 'Post not found');
  
  let alreadyLiked = false;
  for (let i = u64(START_LIKE_ID); i < lastLikeId; i++) {
    const like = likesMap.get(i, new Like());
    if (like.userAddress.toString() == userAddress && like.postId == postId) {
      alreadyLiked = true;
      break;
    }
  }
  assert(!alreadyLiked, 'User has already liked this post');
  
  const like = new Like(lastLikeId, new Address(userAddress), postId, timestamp());
  likesMap.set(lastLikeId, like);
  Storage.set(LIKE_ID_KEY, (lastLikeId + 1).toString());
  generateEvent(createEvent('LikePost', [userAddress, postId.toString()]));
}

/**
 * Unlikes a previously liked post.
 */
export function unlikePost(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  const userAddress = caller().toString();
  const lastLikeId = u64.parse(Storage.get(LIKE_ID_KEY));
  
  assert(postMap.contains(postId.toString()), 'Post not found');
  
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
  
  likesMap.delete(likeId);
  generateEvent(
    createEvent('UnlikePost', [
      likeId.toString(),
      userAddress,
      postId.toString(),
    ])
  );
}

/* ----------------------------------
           Comments
-------------------------------------*/

/**
 * Adds a comment to a post.
 * Supports optional parent comment IDs for threaded comments.
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
  
  const comment = new Comment(commentId, postId, caller(), text, timestamp(), parentId);
  commentsMap.set(commentId, comment);
  Storage.set(COMMENT_ID_KEY, (commentId + 1).toString());
  generateEvent(
    createEvent('AddComment', [
      postId.toString(),
      commentId.toString(),
      caller().toString(),
      text,
      comment.createdAt.toString(),
      parentId > u64(0) ? parentId.toString() : 'null',
    ])
  );
}

/**
 * Retrieves all comments for a specific post.
 */
export function getPostComments(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const postId = args.nextU64().unwrap();
  assert(postMap.contains(postId.toString()), 'Post not found');
  
  const lastCommentId = u64.parse(Storage.get(COMMENT_ID_KEY));
  let commentsArray: Comment[] = [];
  for (let i = u64(0); i < lastCommentId; i++) {
    const comment = commentsMap.get(i, new Comment());
    if (comment.postId === postId) {
      commentsArray.push(comment);
    }
  }
  return new Args().addSerializableObjectArray<Comment>(commentsArray).serialize();
}

/**
 * Retrieves all replies for a specific comment.
 */
export function getCommentReplies(binaryArgs: StaticArray<u8>): StaticArray<u8> {
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
  return new Args().addSerializableObjectArray<Comment>(repliesArray).serialize();
}

/**
 * Deletes a comment.
 * Only the comment's author or the contract owner can delete a comment.
 */
export function removeComment(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const commentId = args.nextU64().unwrap();
  assert(commentsMap.contains(commentId), 'Comment not found');
  
  const comment = commentsMap.get(commentId, new Comment());
  assert(
    comment.commenter.toString() == caller().toString() ||
    comment.commenter.toString() == Storage.get(OWNER_KEY),
    'Caller has no permission to delete this comment'
  );
  
  commentsMap.delete(commentId);
}

/**
 * Retrieves all comments stored in the contract.
 */
export function getAllComments(): StaticArray<u8> {
  const lastCommentId = u64.parse(Storage.get(COMMENT_ID_KEY));
  let commentsArray: Comment[] = [];
  for (let i = u64(0); i < lastCommentId; i++) {
    const comment = commentsMap.get(i, new Comment());
    commentsArray.push(comment);
  }
  return new Args().addSerializableObjectArray<Comment>(commentsArray).serialize();
}
