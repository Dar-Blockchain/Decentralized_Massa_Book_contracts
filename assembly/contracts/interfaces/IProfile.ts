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
      getOwnerAddress(): string {
        const res = call(
          this._origin,
          'getOwnerAddress',
          new Args(),
          0,
        );
        return res.toString();
      }


      
      

      
      

}