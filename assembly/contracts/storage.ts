import { Profile } from '../structs/profile';
import { Post } from '../structs/post';
import { PersistentMap } from '../libraries/PersistentMap';
import { bytesToString, stringToBytes } from '@massalabs/as-types';
import { Comment } from '../structs/comment';
import { Repost } from '../structs/repost';

export const POST_ID_KEY = 'postId';
export const COMMENT_ID_KEY = 'commentId';
export const REPOST_ID_KEY = 'repostId';

export const profileKey = new PersistentMap<string, Profile>('profile');

export const postMap = new PersistentMap<string, Post>('post');

export const likesMap = new PersistentMap<string, bool>('likesMap');

export const userLikedPosts = new PersistentMap<string, Array<string>>(
  'userLikedPosts',
);

export const postLikedUsers = new PersistentMap<u64, Array<string>>(
  'postLikedUsers',
);

export const postCommentsMap = new PersistentMap<u64, Array<string>>(
  'postComments',
);
export const commentsMap = new PersistentMap<u64, Comment>('comments');

// New mapping from comment ID to an array of reply comment IDs
export const commentRepliesMap = new PersistentMap<u64, Array<u64>>(
  'commentReplies',
);

export const userReposts = new PersistentMap<string, Array<string>>(
  'userReposts',
);

export const repostsMap = new PersistentMap<string, Repost>('reposts');
export const postRepostsMap = new PersistentMap<u64, Array<string>>(
  'postReposts',
);
