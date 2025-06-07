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
  parseMas
} from '@massalabs/massa-web3';
import { Profile } from './structs/profile';
import { Post } from './structs/post';
import { Comment } from './structs/comment';
import { Follow } from './structs/follow';

export async function createProfile(contract: SmartContract,templateAddress:string,firstname:string,lastname:string,bio:string,avatar:string) {
  console.log('Adding a post to the contract...');
const args = new Args()
  .addString(templateAddress) // Template address
  .addString(firstname) // First name
  .addString(lastname) // Last name
  .addString(bio) // Bio
  .addString(avatar) // Photo (base64 encoded)
  .addString('USA') // Country
  .addString('New York') // City
  .addString('@johndoe') // Telegram
  .addString('@johndoe_x') // X handle
  .addU64(parseMas("3")) // X handle

  const operation = await contract.call('createAccount', args.serialize(), {
    coins: Mas.fromString('8'),
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
function extractAddress(str:any) {
  const regex = /(AS\w+)/; // Matches "AS" followed by one or more word characters
  const match = str.match(regex);
  return match ? match[0] : null; // Returns the matched address or null if not found
}
export async function getProfileAddress(contract: SmartContract,usrWalletAddress:string) {
  console.log('Adding a post to the contract...');
const args = new Args()
  .addString(usrWalletAddress) // Template address
 
  const result = await contract.read('getUserContract', args.serialize());
  let addressOfProfile = extractAddress(bytesToStr(result.value))
  console.log(addressOfProfile)
  return (addressOfProfile)
 
}

export async function testCreatePost(contract: SmartContract,text: string, image: string): Promise<boolean> {
  console.log('Testing createPost...');
  const args = new Args().addString(text).addString(image);
  const op: Operation = await contract.call('createPost', args.serialize(), {
    coins: Mas.fromString('1'),
  });
  const status = await op.waitFinalExecution();
  console.log('createPost status:', status);
  return status === OperationStatus.Success;
}

export async function getPosts(contract: SmartContract,page:bigint) {
  const args = new Args().addU64(page)
  const result = await contract.read('getPosts', args);

  const deserializedPosts = new Args(
    result.value,
  ).nextSerializableObjectArray<Post>(Post);

  console.log('Posts :', deserializedPosts);
  return deserializedPosts;
}
export async function getUserProfile(contract: SmartContract, address: string) {
  const args = new Args().addString(address);

  console.log('Reading the profile of the user :', address);

  const result: ReadSCData = await contract.read(
    'getProfile',
    args.serialize(),
  );
  console.log(result.value)
  const profile = new Args(result.value).nextSerializable<Profile>(Profile);

  console.log('User profile : ', profile);
  if (profile.address === '') {
    console.log('User profile not found');
  }
}
export async function getFollowedPosts(contract: SmartContract,page:bigint) {
  const args = new Args().addU64(page)


  const result = await contract.read('getFollowedProfilesLastPosts', args);

  const deserializedPosts = new Args(
    result.value,
  ).nextSerializableObjectArray<Post>(Post);

  console.log('Posts :', deserializedPosts);
}
export async function getOwnerAddress(contract: SmartContract) {
  const args = new Args()


  const result = await contract.read('getOwnerAddress', args);

  const deserializedPosts = bytesToStr(result.value)
  
  console.log('Posts :', deserializedPosts);
}
export async function getFollowed(contract: SmartContract,page:bigint) {
  const args = new Args().addU64(page)


  const result = await contract.read('getFollowedProfiles', args);

  const deserializedPosts = new Args(
    result.value,
  ).nextSerializableObjectArray<Profile>(Profile);

  console.log('followerProfile :', deserializedPosts);
}
export async function getFollowersNbr(contract: SmartContract,userAddress:string) {
  const args = new Args().addString(userAddress)


  const result = await contract.read('getFollowers', args);

 
  const des = new Args(result.value).nextU64()
  console.log('followerProfile :',des);

}
export async function followUser(contract: SmartContract, userAddress: string,userAddress1: string) {
  const operation = await contract.call(
    'following',
    new Args().addString(userAddress).addString(userAddress1).serialize(),
    {
      coins: Mas.fromString('0.02'),
    },
  );
  const operationStatus = await operation.waitFinalExecution();
  console.log('Operation :'+operation)
  if (operationStatus === OperationStatus.Success) {
    console.log('User followed successfully');
    return true;
  } else {
    console.error('Operation failed with status:', operationStatus);
    return false;
  }
}

export async function testUpdateProfile(
  contract: SmartContract,
  address: string,
  firstName: string,
  lastName: string,
  bio: string,
  avatar: string,
  country: string,
  city: string,
  telegram: string,
  xHandle: string
): Promise<boolean> {
  console.log('Testing updateProfile...');
  
  // Create a Profile object with updated information
  const updatedProfile = new Profile(
    address,
    firstName,
    lastName,
    avatar,
    bio,
    country,
    city,
    telegram,
    xHandle
  );

  const args = new Args().addSerializable(updatedProfile);
  
  const operation: Operation = await contract.call('updateProfile', args.serialize(), {
    coins: Mas.fromString('0.1'),
  });
  
  const operationStatus = await operation.waitFinalExecution();
  
  if (operationStatus === OperationStatus.Success) {
    console.log('Profile updated successfully');
    return true;
  } else {
    console.error('Update profile operation failed with status:', operationStatus);
    return false;
  }
}

export async function testAddComment(
  contract: SmartContract,
  postId: bigint,
  text: string,
  CommenterName: string,
  CommenterAvatar: string
): Promise<boolean> {
  console.log('Testing addPostComment...');
  
  const args = new Args()
    .addU64(postId)
    .addString(text)
    .addString(CommenterName)
    .addString(CommenterAvatar)
  
  const operation: Operation = await contract.call('addPostComment', args.serialize(), {
    coins: Mas.fromString('0.1'),
  });
  
  const operationStatus = await operation.waitFinalExecution();
  
  if (operationStatus === OperationStatus.Success) {
    console.log('Comment added successfully');
    return true;
  } else {
    console.error('Add comment operation failed with status:', operationStatus);
    return false;
  }
}

export async function getPostComments(contract: SmartContract, postId: bigint) {
  console.log('Getting comments for post ID:', postId);
  
  const args = new Args().addU64(postId);
  const result = await contract.read('getPostComments', args.serialize());

  const deserializedComments = new Args(
    result.value,
  ).nextSerializableObjectArray<Comment>(Comment);

  console.log('Post Comments:', deserializedComments);
  return deserializedComments;
}

export async function getAllComments(contract: SmartContract) {
  console.log('Getting all comments...');
  
  const args = new Args();
  const result = await contract.read('getAllComments', args.serialize());

  const deserializedComments = new Args(
    result.value,
  ).nextSerializableObjectArray<Comment>(Comment);

  console.log('All Comments:', deserializedComments);
  return deserializedComments;
}

export async function testFactoryAddComment(
  factoryContract: SmartContract,
  postId: bigint,
  text: string,
  postAuthorAddress: string,
  commenterAddress: string
): Promise<boolean> {
  console.log('Testing factory addPostComment...');
  
  const args = new Args()
    .addU64(postId)
    .addString(text)
    .addString(postAuthorAddress)
    .addString(commenterAddress);
  
  const operation: Operation = await factoryContract.call('addPostComment', args.serialize(), {
    coins: Mas.fromString('0.1'),
  });
  console.log('operation :'+operation.id)
  const operationStatus = await operation.waitFinalExecution();
  
  if (operationStatus === OperationStatus.Success) {
    console.log('Factory comment added successfully');
    return true;
  } else {
    console.error('Factory add comment operation failed with status:', operationStatus);
    return false;
  }
}

export async function getFactoryPostComments(
  factoryContract: SmartContract,
  postAuthorAddress: string,
  postId: bigint
) {
  console.log('Getting comments through factory for post ID:', postId, 'by author:', postAuthorAddress);
  
  const args = new Args()
    .addString(postAuthorAddress)
    .addU64(postId);
  
  const result = await factoryContract.read('getPostComments', args.serialize());

  const deserializedComments = new Args(
    result.value,
  ).nextSerializableObjectArray<Comment>(Comment);

  console.log('Factory Post Comments:', deserializedComments);
  return deserializedComments;
}