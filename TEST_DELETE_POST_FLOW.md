# Delete Post Testing Flow

This document outlines the testing flow for the `deletePost` functionality added to the `accountsFactory` contract.

## Prerequisites

1. Deploy the template profile contract
2. Deploy the accountsFactory contract
3. Create a user account using the factory
4. Create at least one post in the user's profile

## Test Flow

### Step 1: Setup Environment

```javascript
// Deploy contracts and create user account
const templateAddress = "AS1..."; // Address of the deployed template
const factoryAddress = "AS2..."; // Address of the deployed factory

// Create user account
const createAccountArgs = new Args()
  .add(templateAddress)
  .add("John")
  .add("Doe") 
  .add("Test bio")
  .add("photo_url")
  .add("USA")
  .add("New York")
  .add("@johndoe")
  .add("johndoe_x")
  .add(1000000000); // 1 MAS

await client.smartContracts.callSmartContract({
  targetAddress: factoryAddress,
  functionName: "createAccount",
  parameter: createAccountArgs.serialize(),
});
```

### Step 2: Get User Profile Contract Address

```javascript
const getUserContractArgs = new Args().add(userAddress);

const profileContractAddress = await client.smartContracts.readSmartContract({
  targetAddress: factoryAddress,
  targetFunction: "getUserContract",
  parameter: getUserContractArgs.serialize(),
});
```

### Step 3: Create a Post to Delete

```javascript
// Create a post directly on the user's profile contract
const createPostArgs = new Args()
  .add("This is a test post to be deleted")
  .add("image_url");

await client.smartContracts.callSmartContract({
  targetAddress: profileContractAddress,
  functionName: "createPost",
  parameter: createPostArgs.serialize(),
});

// Get the post ID (assuming it's post ID 1 if it's the first post)
const postId = 1;
```

### Step 4: Test Successful Post Deletion

```javascript
// Delete the post through the factory
const deletePostArgs = new Args().add(postId);

const deleteResult = await client.smartContracts.callSmartContract({
  targetAddress: factoryAddress,
  functionName: "deletePost",
  parameter: deletePostArgs.serialize(),
  caller: userAddress, // Important: caller must be the owner
});

console.log("Post deleted successfully:", deleteResult);
```

### Step 5: Verify Post Deletion

```javascript
// Try to get the deleted post - should fail or return empty
try {
  const getPostArgs = new Args().add(postId);
  
  const post = await client.smartContracts.readSmartContract({
    targetAddress: profileContractAddress,
    targetFunction: "getPost",
    parameter: getPostArgs.serialize(),
  });
  
  console.log("Post still exists (unexpected):", post);
} catch (error) {
  console.log("Post successfully deleted (expected):", error.message);
}
```

## Error Case Tests

### Test 1: Non-Owner Trying to Delete Post

```javascript
// Try to delete with a different caller address
const unauthorizedCaller = "AS3..."; // Different address

const deletePostArgs = new Args().add(postId);

try {
  await client.smartContracts.callSmartContract({
    targetAddress: factoryAddress,
    functionName: "deletePost",
    parameter: deletePostArgs.serialize(),
    caller: unauthorizedCaller, // Wrong caller
  });
  
  console.log("ERROR: Unauthorized deletion succeeded (should fail)");
} catch (error) {
  console.log("SUCCESS: Unauthorized deletion blocked:", error.message);
}
```

### Test 2: Deleting Non-Existent Post

```javascript
// Try to delete a post that doesn't exist
const nonExistentPostId = 9999;
const deletePostArgs = new Args().add(nonExistentPostId);

try {
  await client.smartContracts.callSmartContract({
    targetAddress: factoryAddress,
    functionName: "deletePost",
    parameter: deletePostArgs.serialize(),
    caller: userAddress,
  });
  
  console.log("ERROR: Non-existent post deletion succeeded (should fail)");
} catch (error) {
  console.log("SUCCESS: Non-existent post deletion blocked:", error.message);
}
```

### Test 3: User Without Profile Contract

```javascript
// Try to delete with an address that has no profile contract
const addressWithoutProfile = "AS4...";

const deletePostArgs = new Args().add(postId);

try {
  await client.smartContracts.callSmartContract({
    targetAddress: factoryAddress,
    functionName: "deletePost",
    parameter: deletePostArgs.serialize(),
    caller: addressWithoutProfile,
  });
  
  console.log("ERROR: Deletion without profile succeeded (should fail)");
} catch (error) {
  console.log("SUCCESS: Deletion without profile blocked:", error.message);
}
```

## Expected Results

### Successful Case
- ✅ Post is deleted from the profile contract
- ✅ `PostDeleted` event is emitted with correct parameters
- ✅ Subsequent attempts to retrieve the post fail

### Error Cases
- ✅ Non-owner cannot delete posts (assertion fails)
- ✅ Cannot delete non-existent posts (assertion fails)
- ✅ Cannot delete without having a profile contract (assertion fails)

## Event Verification

Check for the `PostDeleted` event after successful deletion:

```javascript
// Event structure:
{
  eventName: "PostDeleted",
  data: [
    postId.toString(),      // Post ID that was deleted
    authorAddress,          // Address of the post author/caller
    authorProfileContract   // Address of the profile contract
  ]
}
```

## Integration with Frontend

For frontend integration, the delete flow would be:

1. User clicks "Delete Post" button
2. Frontend calls `deletePost` on the factory contract
3. Frontend listens for `PostDeleted` event
4. Frontend updates UI to remove the deleted post
5. Frontend shows success/error message based on result

## Security Considerations

- Only the owner of a profile contract can delete posts from that contract
- The factory validates ownership before calling the profile contract
- All operations are logged via events for transparency
- Invalid inputs are properly handled with clear error messages 