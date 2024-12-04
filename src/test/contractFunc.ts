import {
  Address,
  Args,
  bytesToSerializableObjectArray,
  bytesToStr,
  DeserializedResult,
  Mas,
  Operation,
  OperationStatus,
  ReadSCData,
  Serializable,
  SmartContract,
} from '@massalabs/massa-web3';
import { Profile } from './structs/profile';
import { Post } from './structs/post';

export async function getUserProfile(contract: SmartContract, address: string) {
  const args = new Args().addString(address);

  console.log('Reading the profile of the user :', address);

  const result: ReadSCData = await contract.read(
    'getProfile',
    args.serialize(),
  );

  const profile = new Args(result.value).nextSerializable<Profile>(Profile);

  console.log('User profile : ', profile);
  if (profile.address === '') {
  }
}

export async function updateUserProfile(
  contract: SmartContract,
  address: string,
) {
  const newProfile = new Profile(
    address,
    'Ayoub Amer',
    'https://www.google.com',
    'Junior full stack dev',
  );

  const args = new Args().addSerializable(newProfile);

  // call smart contract
  const operation = await contract.call('updateProfile', args.serialize(), {
    coins: Mas.fromString('0.02'),
  });

  const operationStatus = await operation.waitFinalExecution();

  if (operationStatus === OperationStatus.Success) {
    console.log('Profile updated successfully');
    return true;
  } else {
    console.error('Operation failed with status:', operationStatus);
    return false;
  }
}

export async function addPost(contract: SmartContract, text: string) {
  console.log('Adding a post to the contract...');
  const args = new Args().addString(text).addString('');

  const operation = await contract.call('createPost', args.serialize(), {
    coins: Mas.fromString('0.02'),
  });

  const operationStatus = await operation.waitFinalExecution();

  if (operationStatus === OperationStatus.Success) {
    console.log('Post added successfully');
    return true;
  } else {
    console.error('Operation failed with status:', operationStatus);
    return false;
  }
}

export async function getPosts(contract: SmartContract) {
  const result = await contract.read('getPosts', new Args().serialize());

  const deserializedPosts = new Args(
    result.value,
  ).nextSerializableObjectArray<Post>(Post);

  console.log('Posts :', deserializedPosts);
}

export async function getPostById(contract: SmartContract, id: bigint) {
  const result = await contract.read(
    'getPost',
    new Args().addU64(id).serialize(),
  );

  const deserializedPost = new Args(result.value).nextSerializable<Post>(Post);

  console.log('Post :', deserializedPost);
}
