import { Args, Result, Serializable } from '@massalabs/as-types';
import { Address } from '@massalabs/massa-as-sdk';

export class Post implements Serializable {
  constructor(
    public id: u64 = 0,
    public author: Address = new Address(''),
    public authorName: string = '',
    public authorAvatar: string = '',
    public text: string = '',
    public image: string = '',
    public isRepost: bool = false,
    public repostedPostId: u64 = 0,
    public createdAt: u64 = 0,
    public likesNbr: u64 = 0,
    public commentNbr: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.id)
      .add(this.author) // Serialize the author's profile
      .add(this.authorName)
      .add(this.authorAvatar)
      .add(this.text)
      .add(this.image)
      .add(this.isRepost)
      .add(this.repostedPostId)
      .add(this.createdAt)
      .add(this.likesNbr)
      .add(this.commentNbr)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);
    this.id = args.nextU64().expect('Failed to deserialize id');
    this.author = new Address(
      args.nextString().expect('Failed to deserialize author'),
    );
    this.authorName = args.nextString().expect('Failed to deserialize author Name'),
    this.authorAvatar = args.nextString().expect('Failed to deserialize author Avatar'),
    this.text = args.nextString().expect('Failed to deserialize content');
    this.image = args.nextString().expect('Failed to deserialize image');
    this.isRepost = args.nextBool().expect('Failed to deserialize isRepost');
    this.repostedPostId = args
      .nextU64()
      .expect('Failed to deserialize repostedPostId');
    const createdAtTimestamp = args.nextU64();
    this.createdAt = createdAtTimestamp.isOk()
      ? createdAtTimestamp.unwrap()
      : 0;
    this.likesNbr = args.nextU64().expect('Failed to deserialize likesNbr');
    this.commentNbr = args.nextU64().expect('Failed to deserialize commentNbr');

    return new Result(args.offset);
  }
}
