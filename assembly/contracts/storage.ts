import { Profile } from '../structs/profile';
import { Post } from '../structs/post';
import { PersistentMap } from '../libraries/PersistentMap';

export const profileKey = new PersistentMap<string, Profile>('profile');
export const postKey = new PersistentMap<string, Post>('post');
