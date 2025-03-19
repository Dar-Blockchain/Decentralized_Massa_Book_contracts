import { Args, DeserializedResult, Serializable } from '@massalabs/massa-web3';

export class Profile implements Serializable<Profile> {
  constructor(
    public address: string = '',
    public firstName: string = '',
    public lastName: string = '',
    public avatar: string = '',
    public bio: string = '',
    public country: string = '',
    public city: string = '',
    public telegram: string = '',
    public xHandle: string = '',
  ) {}

  serialize(): Uint8Array {
    const args = new Args()
    .addString(this.address)
    .addString(this.firstName)
    .addString(this.lastName)
    .addString(this.bio)
    .addString(this.avatar)
    .addString(this.country)
    .addString(this.city)
    .addString(this.telegram)
    .addString(this.xHandle)

    return new Uint8Array(args.serialize());
  }
  deserialize(data: Uint8Array, offset: number): DeserializedResult<Profile> {
    const args = new Args(data, offset);

    this.address = args.nextString();
    this.firstName = args.nextString();
    this.lastName = args.nextString();
    this.bio = args.nextString();

    this.avatar = args.nextString();
    this.country = args.nextString();
    this.city = args.nextString();
    this.telegram = args.nextString();
    this.xHandle = args.nextString();

    return { instance: this, offset: args.getOffset() };
  }
}
