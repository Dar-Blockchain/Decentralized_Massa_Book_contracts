import {
  Account,
  Args,
  Mas,
  SmartContract,
  Web3Provider,
  
} from '@massalabs/massa-web3';
import {
  createProfile,getProfileAddress,testCreatePost,getPosts,getUserProfile,followUser,getFollowedPosts,getOwnerAddress,
  getFollowed
} from './test/contractFactoryFunc';
import { getScByteCode } from './utils';

const account = await Account.fromEnv('PRIVATE_KEY');
const account2 = await Account.fromEnv('PRIVATE_KEY_TWO');
const provider = Web3Provider.buildnet(account);
const provider2 = Web3Provider.buildnet(account2);

console.log('Deploying contract...');

const byteCode = getScByteCode('build', 'accountsFactory.wasm');
const byteCodeProfile = getScByteCode('build', 'main.wasm');

const constructorArgs = new Args();

const contract = await SmartContract.deploy(
  provider,
  byteCode,
  constructorArgs,
  { coins: Mas.fromString('5') },
);
const _TempconstructorArgs = new Args();
_TempconstructorArgs.addString("AS1EfWLpUZ3YagENXV7z3yzp7Zgm4mha9s54aChvyGFmCedRNYx1")
  .addString("hatem")
  .addString("hatem")
  .addString("hatem")
  .addString("hatem")
  .addString("hatem")
  .addString("hatem")
  .addString("hatem")
  .addString("hatem")
const _Tempcontract = await SmartContract.deploy(
  provider,
  byteCodeProfile,
  _TempconstructorArgs,
  { coins: Mas.fromString('5') },
);
const contract2 = new SmartContract(provider2, contract.address);

console.log('Factory deployed at:', contract.address);

console.log('Interacting with contract:', contract.address);

async function testCreateProfile() {
  await createProfile(contract,_Tempcontract.address,"Hatem","Azaiez","Blockchain dev","https://gratisography.com/wp-content/uploads/2025/01/gratisography-dog-vacation-1170x780.jpg")
  await createProfile(contract2,_Tempcontract.address,"Skander","Azaiez","Fullstack dev","https://gratisography.com/wp-content/uploads/2024/11/gratisography-cool-sphere-1170x780.jpg")

}
async function _getProfileAddress() {
  const address = await getProfileAddress(contract,account.address.toString());
  console.log('Profile address:', address);
  const address2 = await getProfileAddress(contract2,account2.address.toString());
  console.log('Profile 2 address:', address2);
  return address;
  // update user profile
  
}
async function __getProfileAddress(_contract: SmartContract, _account: Account) {
  const address = await getProfileAddress(_contract,_account.address.toString());
  console.log('Profile address:', address);
  return address;
  // update user profile
  
}
async function _getProfile(contractadd:string,address:string) {
  const contract2 = new SmartContract(provider, contractadd);

  const profile = await getUserProfile(contract2, address) ;
  console.log('Profile of User:', profile);
  return profile;
  // update user profile
  
}

async function _createPost(_contract: SmartContract) {


  await testCreatePost(_contract,"this is my first post", "https://")
} 
async function _getOwnerAddress(address : string) {

  const contract2 = new SmartContract(provider, address);

  await getOwnerAddress(contract2)
} 

async function _getPosts(address : string) {

  const contract2 = new SmartContract(provider, address);

  const posts = await getPosts(contract2,0n)
  return posts;
} 
async function __getFollowed() {
  const profile1 = await __getProfileAddress(contract, account)
  const cont = new SmartContract(provider, profile1);
  const follows= await  getFollowed(cont,0n)
  console.log("my following user "+follows)
  return follows;
}
async function __getFollowedPosts() {
  const profile1 = await __getProfileAddress(contract, account)
  const cont = new SmartContract(provider, profile1);
  const posts= await  getFollowedPosts(cont,0n)
  console.log("my following users posts "+posts)
  return posts;
}
async function followProfileTest() {
  const profile1 = await __getProfileAddress(contract, account)
  console.log("my profile "+profile1)
  const profile2 = await __getProfileAddress(contract2,account2)
  console.log("my profile 2"+profile2)

  const cont = new SmartContract(provider, profile1);

 await followUser(cont,profile2,account2.address.toString());
}

await testCreateProfile();
let profileAdd = await _getProfileAddress();
let profileAdd2 = await __getProfileAddress(contract2,account2);
const cont1 = new SmartContract(provider, profileAdd);
const cont2 = new SmartContract(provider2, profileAdd2);

await _createPost(cont1)
console.log("******************* Create post 1  ************* ")
await _createPost(cont2)
console.log("******************* Create post 2  ************* ")

console.log("******************* Profile 1  ************* ")

await _getProfile(profileAdd,account.address.toString())
console.log("******************* Profile 2  ************* ")

await _getProfile(profileAdd2,account2.address.toString())
console.log("******************* owner 1 ************* ")

await _getOwnerAddress(profileAdd) 
console.log("******************* owner 2  ************* ")

await _getOwnerAddress(profileAdd2) 

await _getPosts(profileAdd) 
await followProfileTest();

await __getFollowed()
await __getFollowedPosts();
console.log('All the smart conract Events :');

const events = await provider.getEvents({
  smartContractAddress: contract.address,
});

for (const event of events) {
  console.log('Event message:', event.data);
}