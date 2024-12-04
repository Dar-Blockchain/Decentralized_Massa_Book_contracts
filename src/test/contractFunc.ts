import {
  Address,
  Args,
  bytesToSerializableObjectArray,
  bytesToStr,
  DeserializedResult,
  Operation,
  ReadSCData,
  Serializable,
  SmartContract,
} from '@massalabs/massa-web3';

// User Profile structure
export class Profile implements Serializable<Profile> {
  constructor(
    public address: string = '',
    public name: string = '',
    public avatar: string = '',
    public bio: string = '',
  ) {}

  serialize(): Uint8Array {
    const args = new Args()
      .addString(this.address)
      .addString(this.name)
      .addString(this.avatar)
      .addString(this.bio);

    return new Uint8Array(args.serialize());
  }
  deserialize(data: Uint8Array, offset: number): DeserializedResult<Profile> {
    const args = new Args(data, offset);

    this.address = args.nextString();
    this.name = args.nextString();
    this.avatar = args.nextString();
    this.bio = args.nextString();

    return { instance: this, offset: args.getOffset() };
  }
}

export async function getProfile(contract: SmartContract, address: string) {
  const args = new Args().addString(address);

  console.log('Reading the profile of the user :', address);

  const result: ReadSCData = await contract.read(
    'getProfile',
    args.serialize(),
  );

  console.log('Result: ', result);

  // const profileSrtr = bytesToStr(result.value);

  const profile = new Args(result.value).nextSerializable<Profile>(Profile);

  console.log('User profile : ', profile);
}
