import {
  Account,
  Args,
  Mas,
  SmartContract,
  Web3Provider,
} from '@massalabs/massa-web3';
import {
  addPost,
  getPostById,
  getPosts,
  getUserProfile,
  updateUserProfile,
} from './test/contractFunc';
import { getScByteCode } from './utils';

const account = await Account.fromEnv('PRIVATE_KEY');
const provider = Web3Provider.buildnet(account);

console.log('Deploying contract...');

const byteCode = getScByteCode('build', 'main.wasm');

const constructorArgs = new Args();

const contract = await SmartContract.deploy(
  provider,
  byteCode,
  constructorArgs,
  { coins: Mas.fromString('0.01') },
);

console.log('Contract deployed at:', contract.address);

console.log('Interacting with contract:', contract.address);

async function testProfile() {
  await getUserProfile(contract, account.address.toString());
  // update user profile
  await updateUserProfile(contract, account.address.toString());
  // get user profile
  await getUserProfile(contract, account.address.toString());
}

async function testPost() {
  // add post to the contract
  await addPost(contract, 'hello world');
  // get posts from the contract
  await getPosts(contract);
  // get post by id
  await getPostById(contract, 0n);
  // add another post to the contract
  await addPost(contract, 'hello world 2');
  // get posts from the contract
  await getPosts(contract);
  // get post by id
  await getPostById(contract, 1n);
}

await testProfile();
await testPost();

console.log('All the smart conract Events :');

const events = await provider.getEvents({
  smartContractAddress: contract.address,
});

for (const event of events) {
  console.log('Event message:', event.data);
}
