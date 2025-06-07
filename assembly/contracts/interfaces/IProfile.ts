import {
    Args,
    bytesToString,
    bytesToU256,
   
  } from '@massalabs/as-types';
  import { u256 } from 'as-bignum/assembly';
  import { Post } from '../../structs/post';

  import { Address, call } from '@massalabs/massa-as-sdk';
import { Profile } from '../../structs/profile';
  
export class IProfile{
     constructor(public _origin: Address) {}
     getLastPost(): Post {
        const res = call(
          this._origin,
          'getLastPost',
          new Args(),
          0,
        );
        return new Args(res).nextSerializable<Post>().unwrap();
      }
   
      getProfile(user:string): Profile {
        const res = call(
          this._origin,
          'getProfile',
          new Args().add(user),
          0,
        );
        return new Args(res).nextSerializable<Profile>().unwrap();
      }
      followProfile(userProfile:string, followUserAddress:string): void {
        call(
          this._origin,
          'followProfile',
          new Args().add(userProfile).add(followUserAddress),
          0,
        );
      }
      getOwnerAddress(): string {
        const res = call(
          this._origin,
          'getOwnerAddress',
          new Args(),
          0,
        );
        return res.toString();
      }

      addPostComment(postId: u64, text: string, commenterName: string, commenterAvatar: string): void {
        call(
          this._origin,
          'addPostComment',
          new Args().add(postId).add(text).add(commenterName).add(commenterAvatar),
          0,
        );
      }

      getPostComments(postId: u64): StaticArray<u8> {
        const res = call(
          this._origin,
          'getPostComments',
          new Args().add(postId),
          0,
        );
        return res;
      }

      

      
      

}