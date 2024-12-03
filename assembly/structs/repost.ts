import { Args, Result, Serializable } from '@massalabs/as-types';
import { Address } from '@massalabs/massa-as-sdk';

export class Repost implements Serializable {
  constructor(
    public id: u64 = 0,
    public originalPostId: u64 = 0,
    public reposter: Address = new Address(''),
    public createdAt: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.id)
      .add(this.originalPostId)
      .add(this.reposter)
      .add(this.createdAt)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);
    this.id = args.nextU64().expect('Failed to deserialize id');
    this.originalPostId = args
      .nextU64()
      .expect('Failed to deserialize originalPostId');
    this.reposter = new Address(
      args.nextString().expect('Failed to deserialize reposter'),
    );
    this.createdAt = args.nextU64().expect('Failed to deserialize createdAt');

    return new Result(args.offset);
  }
}
