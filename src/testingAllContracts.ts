// deployAndTest.ts
import {
    Account,
    Args,
    Mas,
    Operation,
    OperationStatus,
    SmartContract,
    Web3Provider,
  } from '@massalabs/massa-web3';
  import { getScByteCode } from './utils'; // utility to load WASM bytecode from disk
  import { Profile } from './test/structs/profile';
  import { Post } from './test/structs/post';
  import { Comment } from './test/structs/comment';
  import { Follow } from './test/structs/follow';
  
  async function deployAndTest() {
    // Deploy accounts and build provider
    const account = await Account.fromEnv('PRIVATE_KEY');
    const provider = Web3Provider.buildnet(account);
  
    // ------------------------
    // Deploy Factory Contract
    // ------------------------
    console.log('Deploying accounts factory contract...');
    const factoryByteCode = getScByteCode('build', 'accountsFactory.wasm');
    const factoryConstructorArgs = new Args(); // assuming no constructor parameters for factory
    const factoryContract: SmartContract = await SmartContract.deploy(
      provider,
      factoryByteCode,
      factoryConstructorArgs,
      { coins: Mas.fromString('5') }
    );
    console.log('Factory contract deployed at:', factoryContract.address);
  
    // -------------------------
    // Deploy Profile Contract
    // -------------------------
    console.log('Deploying profile contract...');
    const profileByteCode = getScByteCode('build', 'main.wasm');
    const profileConstructorArgs = new Args()
      .addString("AS1EfWLpUZ3YagENXV7z3yzp7Zgm4mha9s54aChvyGFmCedRNYx1") // sample user address
      .addString("hatem") // first name
      .addString("hatem") // last name
      .addString("hatem bio") // bio
      .addString("hatemPhoto") // photo
      .addString("hatemCountry") // country
      .addString("hatemCity") // city
      .addString("hatemTelegram") // telegram
      .addString("hatemXhandle"); // x handle
    const profileContract: SmartContract = await SmartContract.deploy(
      provider,
      profileByteCode,
      profileConstructorArgs,
      { coins: Mas.fromString('5') }
    );
    console.log('Profile contract deployed at:', profileContract.address);
  
    // -------------------------
    // FACTORY CONTRACT TESTS
    // -------------------------
    // 1. Test createAccount (which creates a new profile contract for a user)
    async function testCreateAccount(templateAddress: string): Promise<boolean> {
      console.log('Testing createAccount...');
      const args = new Args()
        .addString(templateAddress)   // template address (profile contract)
        .addString('John')            // first name
        .addString('Doe')             // last name
        .addString('Blockchain enthusiast') // bio
        .addString('base64photoJohn') // photo (base64)
        .addString('USA')             // country
        .addString('New York')        // city
        .addString('@johndoe')        // telegram
        .addString('@johndoe_x');     // x handle
  
      const op: Operation = await factoryContract.call(
        'createAccount',
        args.serialize(),
        { coins: Mas.fromString('6') }
      );
      const status = await op.waitFinalExecution();
      console.log('createAccount status:', status);
      return status === OperationStatus.Success;
    }
  
    // 2. Test getUserContract
    async function testGetUserContract(userId: string): Promise<string> {
      console.log('Testing getUserContract...');
      const args = new Args().addString(userId);
      const op: Operation = await factoryContract.call('getUserContract', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('getUserContract status:', status);
      // Using contract.read here instead of readSCData
      const result = await factoryContract.read('getUserContract', args.serialize());
      const userContractAddress = new Args(result.value).nextString();
      console.log('User contract address retrieved:', userContractAddress);
      return userContractAddress;
    }
  
    // -------------------------
    // PROFILE CONTRACT TESTS
    // -------------------------
    // 3. Test transferOwnership.
    async function testTransferOwnership(newOwner: string): Promise<boolean> {
      console.log('Testing transferOwnership...');
      const args = new Args().addString(newOwner);
      const op: Operation = await profileContract.call('transferOwnership', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('transferOwnership status:', status);
      return status === OperationStatus.Success;
    }
  
    // 4. Test getProfile.
    async function testGetProfile(userAddress: string): Promise<Uint8Array> {
      console.log('Testing getProfile...');
      const args = new Args().addString(userAddress);
      const op: Operation = await profileContract.call('getProfile', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('getProfile status:', status);
      // Use contract.read to get the serialized profile
      const result = await profileContract.read('getProfile', args.serialize());
      console.log('Profile data (bytes):', result.value);
      return result.value;
    }
  
    // 5. Test updateProfile.
    async function testUpdateProfile(updatedProfile: any): Promise<boolean> {
      console.log('Testing updateProfile...');
      const args = new Args().addSerializable(updatedProfile);

      const op: Operation = await profileContract.call('updateProfile', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('updateProfile status:', status);
      return status === OperationStatus.Success;
    }
  
    // 6. Test followProfile.
    async function testFollowProfile(userToFollow: string): Promise<boolean> {
      console.log('Testing followProfile...');
      const args = new Args().addString(userToFollow);
      const op: Operation = await profileContract.call('followProfile', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('followProfile status:', status);
      return status === OperationStatus.Success;
    }
  
    // 7. Test unfollowProfile.
    async function testUnfollowProfile(userToUnfollow: string): Promise<boolean> {
      console.log('Testing unfollowProfile...');
      const args = new Args().addString(userToUnfollow);
      const op: Operation = await profileContract.call('unfollowProfile', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('unfollowProfile status:', status);
      return status === OperationStatus.Success;
    }
  
    // 8. Test getFollowersPaginated.
    async function testGetFollowersPaginated(userAddress: string, page: bigint): Promise<any[]> {
      console.log('Testing getFollowersPaginated...');
      const args = new Args().addString(userAddress).addU64(page);
      const op: Operation = await profileContract.call('getFollowersPaginated', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('getFollowersPaginated status:', status);
      const result = await profileContract.read('getFollowersPaginated', args.serialize());
      const followersArray = new Args(result.value)
        .nextSerializableObjectArray<Follow>(Follow)
      console.log('Followers:', followersArray);
      return followersArray;
    }
  
    // 9. Test createPost.
    async function testCreatePost(text: string, image: string): Promise<boolean> {
      console.log('Testing createPost...');
      const args = new Args().addString(text).addString(image);
      const op: Operation = await profileContract.call('createPost', args.serialize(), {
        coins: Mas.fromString('1'),
      });
      const status = await op.waitFinalExecution();
      console.log('createPost status:', status);
      return status === OperationStatus.Success;
    }
  
    // 10. Test updatePost.
    async function testUpdatePost(postId: bigint, text: string, image: string): Promise<boolean> {
      console.log('Testing updatePost...');
      const args = new Args().addU64(postId).addString(text).addString(image);
      const op: Operation = await profileContract.call('updatePost', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('updatePost status:', status);
      return status === OperationStatus.Success;
    }
  
    // 11. Test deletePost.
    async function testDeletePost(postId: bigint): Promise<boolean> {
      console.log('Testing deletePost...');
      const args = new Args().addU64(postId);
      const op: Operation = await profileContract.call('deletePost', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('deletePost status:', status);
      return status === OperationStatus.Success;
    }
  
    // 12. Test getUserPostsPaginated.
    async function testGetUserPostsPaginated(userAddress: string, page: bigint): Promise<any[]> {
      console.log('Testing getUserPostsPaginated...');
      const args = new Args().addString(userAddress).addU64(page);
      const op: Operation = await profileContract.call('getUserPostsPaginated', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('getUserPostsPaginated status:', status);
      const result = await profileContract.read('getUserPostsPaginated', args.serialize());
      const postsArray = new Args(result.value)
        .nextSerializableObjectArray<Post>(Post)
      console.log('User posts:', postsArray);
      return postsArray;
    }
  
    // 13. Test likePost.
    async function testLikePost(postId: bigint): Promise<boolean> {
      console.log('Testing likePost...');
      const args = new Args().addU64(postId);
      const op: Operation = await profileContract.call('likePost', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('likePost status:', status);
      return status === OperationStatus.Success;
    }
  
    // 14. Test unlikePost.
    async function testUnlikePost(postId: bigint): Promise<boolean> {
      console.log('Testing unlikePost...');
      const args = new Args().addU64(postId);
      const op: Operation = await profileContract.call('unlikePost', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('unlikePost status:', status);
      return status === OperationStatus.Success;
    }
  
    // 15. Test addPostComment.
    async function testAddPostComment(
      postId: bigint,
      text: string,
      parentCommentId?: bigint
    ): Promise<boolean> {
      console.log('Testing addPostComment...');
      let args = new Args().addU64(postId).addString(text);
      if (parentCommentId !== undefined) {
        args = args.addU64(parentCommentId);
      }
      const op: Operation = await profileContract.call('addPostComment', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('addPostComment status:', status);
      return status === OperationStatus.Success;
    }
  
    // 16. Test getPostComments.
    async function testGetPostComments(postId: bigint): Promise<any[]> {
      console.log('Testing getPostComments...');
      const args = new Args().addU64(postId);
      const op: Operation = await profileContract.call('getPostComments', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('getPostComments status:', status);
      const result = await profileContract.read('getPostComments', args.serialize());
      const commentsArray = new Args(result.value)
        .nextSerializableObjectArray<Post>(Post)
      console.log('Post comments:', commentsArray);
      return commentsArray;
    }
  
    // 17. Test getCommentReplies.
    async function testGetCommentReplies(commentId: bigint): Promise<any[]> {
      console.log('Testing getCommentReplies...');
      const args = new Args().addU64(commentId);
      const op: Operation = await profileContract.call('getCommentReplies', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('getCommentReplies status:', status);
      const result = await profileContract.read('getCommentReplies', args.serialize());
      const repliesArray = new Args(result.value)
        .nextSerializableObjectArray<Comment>(Comment)
      console.log('Comment replies:', repliesArray);
      return repliesArray;
    }
  
    // 18. Test removeComment.
    async function testRemoveComment(commentId: bigint): Promise<boolean> {
      console.log('Testing removeComment...');
      const args = new Args().addU64(commentId);
      const op: Operation = await profileContract.call('removeComment', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('removeComment status:', status);
      return status === OperationStatus.Success;
    }
  
    // 19. Test getAllComments.
    async function testGetAllComments(): Promise<any[]> {
      console.log('Testing getAllComments...');
      const args = new Args();
      const op: Operation = await profileContract.call('getAllComments', args.serialize());
      const status = await op.waitFinalExecution();
      console.log('getAllComments status:', status);
      const result = await profileContract.read('getAllComments', args.serialize());
      const allComments = new Args(result.value)
        .nextSerializableObjectArray<Comment>(Comment)
      
      console.log('All comments:', allComments);
      return allComments;
    }
  
    // --------------------------------
    // Execute the Test Functions
    // --------------------------------
  
    // FACTORY CONTRACT TESTS:
    const createAccountSuccess = await testCreateAccount(profileContract.address);
    if (createAccountSuccess) {
      // For this test, we assume the user identifier is the caller's address.
      const userContractAddr = await testGetUserContract(account.address.toString());
      console.log('New user contract deployed at:', userContractAddr);
    } else {
      console.error('createAccount failed.');
    }
  
    // PROFILE CONTRACT TESTS:
    // Assume the user address is the one deployed in the profile contract.
    await testGetProfile(profileContract.address);
  
    // Update profile (example update – ensure your Profile structure matches)
    const updatedProfile = {
      address: profileContract.address,
      firstName: 'UpdatedFirstName',
      lastName: 'UpdatedLastName',
      bio: 'Updated bio content',
      photo: 'updatedPhotoData',
      country: 'UpdatedCountry',
      city: 'UpdatedCity',
      telegram: '@updatedTelegram',
      xHandle: '@updatedXhandle',
    };
    await testUpdateProfile(updatedProfile);
  
    // Ownership transfer test (transferring to a new dummy address)
    //await testTransferOwnership("NEW_OWNER_ADDRESS");
  
    // Social interactions:
    //await testFollowProfile("USER_TO_FOLLOW_ADDRESS");
    //await testUnfollowProfile("USER_TO_FOLLOW_ADDRESS");
    //await testGetFollowersPaginated(profileContract.address, BigInt(1));
  
    // Post operations:
    await testCreatePost("Hello, Massa!", "base64ImageData");
    // Assuming postId = 1 for testing; adjust as needed based on your environment.
    const testPostId = BigInt(1);
    await testUpdatePost(testPostId, "Updated post text", "newBase64Image");
    await testLikePost(testPostId);
    await testUnlikePost(testPostId);
    await testGetUserPostsPaginated(profileContract.address, BigInt(1));
    await testDeletePost(testPostId);
  
    // Comment operations:
    // Add a comment, then test fetching and deleting it.
    await testAddPostComment(testPostId, "This is a test comment");
    // Assuming commentId = 1 for testing; adjust as needed.
    const testCommentId = BigInt(1);
    await testGetPostComments(testPostId);
    await testGetCommentReplies(testCommentId);
    await testRemoveComment(testCommentId);
    await testGetAllComments();
  
    // -------------------------
    // Retrieve and Log All Events
    // -------------------------
    console.log('Retrieving all events from factory contract...');
    const events = await provider.getEvents({
      smartContractAddress: factoryContract.address,
    });
    for (const event of events) {
      console.log('Event message:', event.data);
    }
  }
  
  // Run the complete deployment and test sequence.
  deployAndTest().catch((error) =>
    console.error('Error during deploy and test:', error)
  );
  
  /*
  Example helper function similar to getPosts:
  This function uses contract.read to fetch and deserialize posts.
  */
  export async function getPosts(contract: SmartContract) {
    const result = await contract.read('getPosts', new Args().serialize());
    const deserializedPosts = new Args(result.value).nextSerializableObjectArray<Post>(Post);
    console.log('Posts:', deserializedPosts);
    return deserializedPosts;
  }
  