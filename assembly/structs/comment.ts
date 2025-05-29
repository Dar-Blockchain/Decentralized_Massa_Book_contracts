import { Args, Result, Serializable } from '@massalabs/as-types';
import { Address } from '@massalabs/massa-as-sdk';

export class Comment implements Serializable {
  constructor(
    public id: u64 = 0,
    public postId: u64 = 0,
    public commenter: Address = new Address(''),
    public commenterName: string = '',
    public commenterAvatar: string = '',
    public text: string = '',
    public createdAt: u64 = 0,
    public parentId: u64 = 0, // New field for parent comment ID
  ) {}

  serialize(): StaticArray<u8> {
    const args = new Args()
      .add(this.id)
      .add(this.postId)
      .add(this.commenter)
      .add(this.commenterName)
      .add(this.commenterAvatar)
      .add(this.text)
      .add(this.createdAt)
      .add(this.parentId)
      .add(this.commenterName)
      .add(this.commenterAvatar)
      ;

    return args.serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);
    this.id = args.nextU64().expect('Failed to deserialize id');
    this.postId = args.nextU64().expect('Failed to deserialize postId');
    this.commenter = new Address(
      args.nextString().expect('Failed to deserialize commenter'),
    );
    this.commenterName = args.nextString().expect('Failed to deserialize commenterName');
    this.commenterAvatar = args.nextString().expect('Failed to deserialize commenterAvatar');
    this.text = args.nextString().expect('Failed to deserialize text');
    this.createdAt = args.nextU64().expect('Failed to deserialize createdAt');
    this.parentId = args.nextU64().expect('Failed to deserialize parentId');
    this.commenterName = args.nextString().expect('Failed to deserialize commenterName');
    this.commenterAvatar = args.nextString().expect('Failed to deserialize commenterAvatar');

    return new Result(args.offset);
  }
}
