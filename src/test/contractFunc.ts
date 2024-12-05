import {
  Address,
  Args,
  ArrayTypes,
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
  name: string,
) {
  console.log('Updating the profile of the user :', address);
  const newProfile = new Profile(
    address,
    name,
    'https://www.google.com',
    'Junior full stack dev',
  );

  const args = new Args().addSerializable(newProfile);

  // call smart contract
  const operation = await contract.call('updateProfile', args.serialize(), {
    coins: Mas.fromString('0.03'),
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

export async function repostPost(contract: SmartContract, postId: bigint) {
  console.log('Reposting post with id:', postId);
  const args = new Args().addU64(postId);

  const operation = await contract.call('repostPost', args.serialize(), {
    coins: Mas.fromString('0.02'),
  });

  const operationStatus = await operation.waitFinalExecution();

  if (operationStatus === OperationStatus.Success) {
    console.log('Post Reposted successfully');
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

export async function getuserPosts(contract: SmartContract, address: string) {
  const args = new Args().addString(address);
  const result = await contract.read('getUserPosts', args.serialize());

  const deserializedPosts = new Args(
    result.value,
  ).nextSerializableObjectArray<Post>(Post);

  console.log(`User ${address} posts :`, deserializedPosts);
}

export async function deletePost(contract: SmartContract, postId: bigint) {
  console.log(`Deleting post with id ${postId}`);
  const args = new Args().addU64(postId);

  const operation = await contract.call('deletePost', args.serialize(), {
    coins: Mas.fromString('0.02'),
  });

  const operationStatus = await operation.waitFinalExecution();

  if (operationStatus === OperationStatus.Success) {
    console.log('Post deleted successfully');
    return true;
  } else {
    console.error('Operation failed with status:', operationStatus);
    return false;
  }
}

export async function likePost(contract: SmartContract, postId: bigint) {
  console.log(`Liking post ${postId}`);

  const args = new Args().addU64(postId);

  const operation = await contract.call('likePost', args.serialize(), {
    coins: Mas.fromString('0.02'),
  });

  const operationStatus = await operation.waitFinalExecution();

  if (operationStatus === OperationStatus.Success) {
    console.log('Post liked successfully');
    return true;
  } else {
    console.error('Operation failed with status:', operationStatus);
    return false;
  }
}

export async function unlikePost(contract: SmartContract, postId: bigint) {
  console.log(`Unliking post ${postId}`);

  const args = new Args().addU64(postId);
  const operation = await contract.call('unlikePost', args.serialize(), {
    coins: Mas.fromString('0.02'),
  });

  const operationStatus = await operation.waitFinalExecution();

  if (operationStatus === OperationStatus.Success) {
    console.log('Post unliked successfully');
    return true;
  } else {
    console.error('Operation failed with status:', operationStatus);
    return false;
  }
}

export async function getUserLikedPosts(
  contract: SmartContract,
  userAddress: string,
) {
  console.log(`Getting user liked posts`);

  const result = await contract.read(
    'getUserLikedPosts',
    new Args().addString(userAddress).serialize(),
  );

  const deserializedPosts = new Args(
    result.value,
  ).nextSerializableObjectArray<Post>(Post);

  console.log(`User ${userAddress} liked posts :`, deserializedPosts);
}

export async function getPostLikedUsers(
  contract: SmartContract,
  postId: bigint,
) {
  console.log(`Getting post ${postId} liked users`);

  const result = await contract.read(
    'getPostLikedUsers',
    new Args().addU64(postId).serialize(),
  );

  const deserializedUsers = new Args(result.value).nextArray<string>(
    ArrayTypes.STRING,
  );

  console.log(`Post ${postId} liked users :`, deserializedUsers);
}
