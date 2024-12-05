import { Profile } from '../structs/profile';
import { Post } from '../structs/post';
import { PersistentMap } from '../libraries/PersistentMap';
import { bytesToString, stringToBytes } from '@massalabs/as-types';
import { Comment } from '../structs/comment';
import { Like } from '../structs/like';

export const POST_ID_KEY = 'postId';
export const LIKE_ID_KEY = 'likeId';
export const COMMENT_ID_KEY = 'commentId';

export const profileMap = new PersistentMap<string, Profile>('profile');

export const postMap = new PersistentMap<string, Post>('post');

export const likesMap = new PersistentMap<u64, Like>('likesMap');

export const commentsMap = new PersistentMap<u64, Comment>('comments');
