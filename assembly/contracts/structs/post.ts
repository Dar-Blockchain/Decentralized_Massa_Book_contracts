import { Args, Result, Serializable } from '@massalabs/as-types';
import { Address } from '@massalabs/massa-as-sdk';

export class Post implements Serializable {
  constructor(
    public author: Address = new Address(''),
    public content: string,
    public createdAt: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.author) // Serialize the author's profile
      .add(this.content)
      .add(this.createdAt)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);

    this.author = new Address(
      args.nextString().expect('Failed to deserialize author'),
    );
    this.content = args.nextString().expect('Failed to deserialize content');
    const createdAtTimestamp = args.nextU64();
    this.createdAt = createdAtTimestamp.isOk()
      ? createdAtTimestamp.unwrap()
      : 0;

    return new Result(args.offset);
  }
}
