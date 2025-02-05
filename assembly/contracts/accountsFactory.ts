import {
    createSC,
    call,
    Context,
    Storage,
    generateEvent,
    createEvent,
    getBytecodeOf,
    Address,
    caller,
  } from '@massalabs/massa-as-sdk';
  import { Args,    stringToBytes  } from '@massalabs/as-types';
  
  const OWNER_KEY = 'OWNER_KEY';
  const USER_CONTRACT_PREFIX = 'USER_CONTRACT_';
  const ONE_UNIT = u64(10 ** 9);

  /**
   * A helper that ensures only the owner can invoke certain functions.
   */
  function onlyOwner(): void {
    const currentOwner = Storage.get(OWNER_KEY);
    assert(currentOwner == caller().toString(), 'Caller is not the owner!');
  }
  
  /**
   * The factory constructor, called once at deployment.
   *
   * - Stores the deployer as the owner.
   * - Expects a string argument with the template contract address to store in on-chain storage.
   */
  export function constructor(binaryArgs: StaticArray<u8>): void {
    // Ensure this function only runs during deployment.
    assert(
      Context.isDeployingContract(),
      'constructor can only be called at deployment',
    );
  
    // Parse constructor args.
    const args = new Args(binaryArgs);
  
    // 1) Set the caller as contract owner.
    Storage.set(OWNER_KEY, Context.caller().toString());
  
  
    // Emit an event for clarity.
    generateEvent(
      createEvent('FactoryDeployed', [
        Context.caller().toString()
      ]),
    );
  }
  
 
  
  /**
   * Allows anyone (no onlyOwner check) to create a new user contract
   * using the template address stored in on-chain storage.
   *
   * Arguments (encoded in `binaryArgs`):
   *   - userId (string): A unique identifier (e.g. user’s address or username).
   */
  export function createAccount(binaryArgs: StaticArray<u8>): void {
    const args = new Args(binaryArgs);
  
    // Extract profile data
    const addressOfTemplate = args.nextString().expect('Template address required');
    const firstName = args.nextString().expect('First name required');
    const lastName = args.nextString().expect('Last name required');
    const bio = args.nextString().expect('Bio required');
    const photo = args.nextString().expect('Photo required');
    const country = args.nextString().expect('Country required');
    const city = args.nextString().expect('City required');
    const telegram = args.nextString().expect('Telegram required');
    const xHandle = args.nextString().expect('X handle required');
  
    // Prepare constructor arguments for the profile contract
    const constructorArgs = new Args()
      .add(caller().toString()) // userAddress
      .add(firstName)
      .add(lastName)
      .add(bio)
      .add(photo)
      .add(country)
      .add(city)
      .add(telegram)
      .add(xHandle)
   
  
    // Deploy the profile contract with constructor arguments
    let profilecontract: StaticArray<u8> = getBytecodeOf(
      new Address(addressOfTemplate)
    );
    const newContractAddress = createSC(profilecontract);
    call(newContractAddress, 'constructor', constructorArgs, ONE_UNIT);


    // Store the new contract address using the caller's address
    Storage.set(USER_CONTRACT_PREFIX + caller().toString(), newContractAddress.toString());
  
    generateEvent(
      createEvent('NewAccountContractDeployed', [
        newContractAddress.toString(),
        caller().toString(),
      ]),
    );
  }
  /**
   * Returns the stored contract address for a specific user ID.
   *
   * Arguments (encoded in `binaryArgs`):
   *   - userId (string)
   */
  export function getUserContract(binaryArgs: StaticArray<u8>): StaticArray<u8> {
    const args = new Args(binaryArgs);
    const userId = args.nextString().expect('Missing userId argument');
  
    const scAddress = Storage.get(USER_CONTRACT_PREFIX + userId);
    assert(
      scAddress.length > 0,
      `No contract found for userId: ${userId}`,
    );
  
    // Return the address as serialized bytes.
    return new Args().add(scAddress).serialize();
  }
  
 