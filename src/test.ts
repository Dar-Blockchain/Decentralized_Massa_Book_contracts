import {
  Account,
  Args,
  Mas,
  SmartContract,
  Web3Provider,
} from '@massalabs/massa-web3';
import { getProfile } from './test/contractFunc';
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

// const contract = new SmartContract(
//   provider,
//   'AS12eQph8gcmdDDzjEpsinz9x2oFxAwyaefVgNziNARat2MrTgUcX',
// );

console.log('Interacting with contract:', contract.address);

async function firstTest() {
  await getProfile(contract, account.address.toString());
}

await firstTest();

console.log('All the smart conract Events :');

const events = await provider.getEvents({
  smartContractAddress: contract.address,
});

for (const event of events) {
  console.log('Event message:', event.data);
}
