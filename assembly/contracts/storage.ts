import { Profile } from '../structs/profile';
import { Post } from '../structs/post';
import { PersistentMap } from '../libraries/PersistentMap';
import { bytesToString, stringToBytes } from '@massalabs/as-types';
import { Comment } from '../structs/comment';
import { Like } from '../structs/like';
import { Follow } from '../structs/follow';

/**
 * Key used in storage to track the next available post ID.
 * It ensures that each post has a unique and incrementing identifier.
 */
export const POST_ID_KEY = 'postId';

/**
 * Key used in storage to track the next available like ID.
 * It ensures that each like entry has a unique and incrementing identifier.
 */
export const LIKE_ID_KEY = 'likeId';

/**
 * Key used in storage to track the next available comment ID.
 * It ensures that each comment has a unique and incrementing identifier.
 */
export const COMMENT_ID_KEY = 'commentId';

/**
 * Key used in storage to track the next available follow ID.
 * It ensures that each follow has a unique and incrementing identifier.
 */
export const FOLLOW_ID_KEY = 'followId';

/**
 * A persistent map that associates a user's address (as a string) with their profile.
 * Used for storing and retrieving user profiles based on their unique address.
 */
export const profileMap = new PersistentMap<string, Profile>('profile');

/**
 * A persistent map that associates a post ID (as a string) with a `Post` object.
 * Used for storing and retrieving posts using their unique ID.
 */
export const postMap = new PersistentMap<string, Post>('post');

/**
 * A persistent map that associates a like ID (as a `u64`) with a `Like` object.
 * Used for storing and retrieving like entries based on their unique ID.
 */
export const likesMap = new PersistentMap<u64, Like>('likesMap');

/**
 * A persistent map that associates a comment ID (as a `u64`) with a `Comment` object.
 * Used for storing and retrieving comments using their unique ID.
 */
export const commentsMap = new PersistentMap<u64, Comment>('comments');

/**
 * A persistent map that associates a follow ID (as a `u64`) with a `Follow` object.
 * Used for storing and retrieving follow entries using their unique ID.
 */
export const followsMap = new PersistentMap<u64, Follow>('follows');

export const usersFollowsMap = new PersistentMap<string, u64>('userFollows');

export function _builduserFollowsKey(user1: string, user2: string): string {
  return `${user1}_${user2}`;
}
