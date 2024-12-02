import { Args, Result, Serializable } from '@massalabs/as-types';

// User Profile structure
export class Profile implements Serializable {
  constructor(
    public address: string,
    public gender: string,
    public avatar: string,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.address)
      .add(this.gender)
      .add(this.avatar)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);

    this.address = args.nextString().expect('Failed to deserialize address');
    this.gender = args.nextString().expect('Failed to deserialize gender');
    this.avatar = args.nextString().expect('Failed to deserialize avatar');

    return new Result(args.offset);
  }
}
