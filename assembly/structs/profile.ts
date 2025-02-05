import { Args, Result, Serializable } from '@massalabs/as-types';
import { Address, generateEvent } from '@massalabs/massa-as-sdk';

// User Profile structure
export class Profile implements Serializable {
  constructor(
    public address: Address = new Address(''),
    public firstName: string = '',
    public lastName: string = '',
    public avatar: string = '',
    public bio: string = '',
    public country: string = '',
    public city: string = '',
    public telegram: string = '',
    public xHandle: string = '',
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.address)
      .add(this.firstName)
      .add(this.lastName)
      .add(this.bio)
      .add(this.avatar)
      .add(this.country)
      .add(this.city)
      .add(this.telegram)
      .add(this.xHandle)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);

    this.address = new Address(
      args.nextString().expect('Failed to deserialize address'),
    );
    this.firstName = args.nextString().expect('Failed to deserialize firstname');
    this.lastName = args.nextString().expect('Failed to deserialize lastName');
    this.bio = args.nextString().expect('Failed to deserialize bio');
    this.avatar = args.nextString().expect('Failed to deserialize avatar');
    this.country = args.nextString().expect("Country required");
    this.city = args.nextString().expect("City required");
    this.telegram = args.nextString().expect("Telegram required");
    this.xHandle = args.nextString().expect("X handle required");
    return new Result(args.offset);
  }

  toString(): string {
    return `"Address": "${this.address.toString()}", "Name": "${
      this.firstName
    }", "Bio": "${this.bio}", Avatar: "${this.avatar}"`;
  }
}
