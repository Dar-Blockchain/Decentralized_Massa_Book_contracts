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
