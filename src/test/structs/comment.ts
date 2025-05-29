import { Args, DeserializedResult, Serializable } from '@massalabs/massa-web3';

export class Comment implements Serializable<Comment> {
  constructor(
    public id: bigint = 0n, // Use bigint for u64 values
    public postId: bigint = 0n, // postId as bigint
    public commenter: string = '', // Address serialized as string
    public commenterName: string = '',
    public commenterAvatar: string = '',
    public text: string = '',
    public createdAt: bigint = 0n, // createdAt as bigint
    public parentId: bigint = 0n, // parentId as bigint
  ) {}

  // Serialize the Comment object
  serialize(): Uint8Array {
    const args = new Args()
      .addU64(this.id)
      .addU64(this.postId)
      .addString(this.commenter) // Address as string
      .addString(this.commenterName)
      .addString(this.commenterAvatar)
      .addString(this.text)
      .addU64(this.createdAt)
      .addU64(this.parentId)
      .addString(this.commenterName)
      .addString(this.commenterAvatar)
      ;

    return new Uint8Array(args.serialize());
  }

  // Deserialize the Comment object
  deserialize(data: Uint8Array, offset: number): DeserializedResult<Comment> {
    const args = new Args(data, offset);

    this.id = args.nextU64(); // Deserialize id
    this.postId = args.nextU64(); // Deserialize postId
    this.commenter = args.nextString(); // Deserialize commenter
    this.commenterName = args.nextString(); // Deserialize commenterName
    this.commenterAvatar = args.nextString(); // Deserialize commenterAvatar
    this.text = args.nextString(); // Deserialize text
    this.createdAt = args.nextU64(); // Deserialize createdAt
    this.parentId = args.nextU64(); // Deserialize parentId
    this.commenterName = args.nextString(); // Deserialize commenterName
    this.commenterAvatar = args.nextString(); // Deserialize commenterAvatar

    return { instance: this, offset: args.getOffset() };
  }
}
