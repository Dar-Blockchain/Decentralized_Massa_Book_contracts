import { Profile } from '../structs/profile';
import { Post } from '../structs/post';
import { PersistentMap } from '../libraries/PersistentMap';
import { bytesToString, stringToBytes } from '@massalabs/as-types';

export const profileKey = new PersistentMap<string, Profile>('profile');
export const postMap = new PersistentMap<string, Post>('post');
export const userLikedPosts = new PersistentMap<string, Array<string>>(
  'userLikedPosts',
);
export const postLikedUsers = new PersistentMap<u64, Array<string>>(
  'postLikedUsers',
);
export const POST_ID_KEY = 'postId';
export const postsKey = stringToBytes('posts');
