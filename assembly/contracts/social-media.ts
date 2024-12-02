import {
  Address,
  caller,
  Context,
  createEvent,
  generateEvent,
  Storage,
} from '@massalabs/massa-as-sdk';
import { Args, stringToBytes } from '@massalabs/as-types';
import { _setOwner, OWNER_KEY } from './utils/ownership-internal';
import { onlyOwner, setOwner } from './utils/ownership';
import { _getProfile } from './social-media-internals';
import { Profile } from '../structs/profile';
import { profileKey } from './storage';

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

export function getProfile(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);

  const userAddress = new Address(args.nextString().unwrap());

  const profile = _getProfile(userAddress).serialize();

  return profile;
}

export function updateProfile(binaryArgs: StaticArray<u8>): void {
  const args = new Args(binaryArgs);
  const profile = args.nextSerializable<Profile>().unwrap();

  const userAddress = profile.address;

  assert(
    caller().toString() == userAddress.toString(),
    'Caller is not the profile owner',
  );

  profileKey.set(userAddress.toString(), profile);

  generateEvent(createEvent('UpdateProfile', [userAddress.toString()]));
}
