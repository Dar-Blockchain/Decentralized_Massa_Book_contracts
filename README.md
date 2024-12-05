# Social Media Smart Contract for Massa Blockchain

This smart contract implements a decentralized social media platform on the Massa blockchain. It allows users to manage profiles, create and interact with posts, and leave comments, all while leveraging the blockchain's transparency and immutability.

---

## Table of Contents

- [Features](#features)
- [Smart Contract Functions](#smart-contract-functions)
  - [Constructor](#constructor)
  - [Ownership Management](#ownership-management)
  - [Profile Management](#profile-management)
  - [Post Management](#post-management)
  - [Like Management](#like-management)
  - [Comment Management](#comment-management)
- [Persistent Storage](#persistent-storage)
- [Setup and Deployment](#setup-and-deployment)
- [Event Structure](#event-structure)
- [License](#license)

---

## Features

- **Decentralized Profile Management**: Users can create and manage their profiles securely.
- **Post Creation and Interaction**: Users can create posts, edit, delete, or repost content.
- **Liking System**: A robust like and unlike mechanism to interact with posts.
- **Commenting System**: Nested comments for posts with support for replies.
- **Ownership Control**: Secure and seamless transfer of contract ownership.

---

## Smart Contract Functions

### Constructor

```typescript
export function constructor(binaryArgs: StaticArray<u8>): void;
```

- **Purpose**: Initializes the contract. Sets the initial owner and prepares the storage for posts, likes, and comments.
- **Arguments**:
  - `admin (string)`: Address of the contract owner.

---

### Ownership Management

#### `transferOwnership`

```typescript
export function transferOwnership(binaryArgs: StaticArray<u8>): void;
```

- **Purpose**: Transfers contract ownership to a new owner.
- **Arguments**:
  - `newOwner (string)`: Address of the new owner.
- **Remarks**: Only callable by the current owner.

---

### Profile Management

#### `getProfile`

```typescript
export function getProfile(binaryArgs: StaticArray<u8>): StaticArray<u8>;
```

- **Purpose**: Fetches a user's profile.
- **Arguments**:
  - `userAddress (string)`: Address of the user.
- **Returns**: Serialized `Profile` object.

#### `updateProfile`

```typescript
export function updateProfile(binaryArgs: StaticArray<u8>): void;
```

- **Purpose**: Updates the profile of a user.
- **Arguments**:
  - `profile (Profile)`: Updated profile object.
- **Remarks**: Only callable by the profile owner or contract owner.

---

### Post Management

#### `createPost`

```typescript
export function createPost(binaryArgs: StaticArray<u8>): void;
```

- **Purpose**: Creates a new post.
- **Arguments**:
  - `text (string)`: Content of the post.
  - `image (string)`: Image URL for the post.
- **Remarks**: Requires an existing profile.

#### `updatePost`

```typescript
export function updatePost(binaryArgs: StaticArray<u8>): void;
```

- **Purpose**: Updates an existing post.
- **Arguments**:
  - `postId (u64)`: ID of the post.
  - `text (string)`: Updated content.
  - `image (string)`: Updated image URL.

#### `deletePost`

```typescript
export function deletePost(binaryArgs: StaticArray<u8>): void;
```

- **Purpose**: Deletes a post.
- **Arguments**:
  - `postId (u64)`: ID of the post to delete.

#### `getPosts`

```typescript
export function getPosts(): StaticArray<u8>;
```

- **Purpose**: Fetches all posts.
- **Returns**: Serialized array of posts.

#### `getPost`

```typescript
export function getPost(binaryArgs: StaticArray<u8>): StaticArray<u8>;
```

- **Purpose**: Fetches a specific post by ID.
- **Arguments**:
  - `postId (u64)`: ID of the post.
- **Returns**: Serialized post object.

---

### Like Management

#### `likePost`

```typescript
export function likePost(binaryArgs: StaticArray<u8>): void;
```

- **Purpose**: Likes a post.
- **Arguments**:
  - `postId (u64)`: ID of the post to like.

#### `unlikePost`

```typescript
export function unlikePost(binaryArgs: StaticArray<u8>): void;
```

- **Purpose**: Removes a like from a post.
- **Arguments**:
  - `postId (u64)`: ID of the post to unlike.

---

### Comment Management

#### `addPostComment`

```typescript
export function addPostComment(binaryArgs: StaticArray<u8>): void;
```

- **Purpose**: Adds a comment to a post.
- **Arguments**:
  - `postId (u64)`: ID of the post to comment on.
  - `text (string)`: Comment content.
  - `parentCommentId (u64, optional)`: ID of the parent comment (for replies).

#### `getPostComments`

```typescript
export function getPostComments(binaryArgs: StaticArray<u8>): StaticArray<u8>;
```

- **Purpose**: Fetches all comments for a post.
- **Arguments**:
  - `postId (u64)`: ID of the post.
- **Returns**: Serialized array of comments.

---

## Persistent Storage

This contract uses `PersistentMap` for efficient storage and retrieval of data:

- **Keys**:
  - `POST_ID_KEY`: Tracks the next available post ID.
  - `LIKE_ID_KEY`: Tracks the next available like ID.
  - `COMMENT_ID_KEY`: Tracks the next available comment ID.
- **Maps**:
  - `profileMap`: Stores user profiles, mapped by user addresses.
  - `postMap`: Stores posts, mapped by post IDs.
  - `likesMap`: Stores likes, mapped by like IDs.
  - `commentsMap`: Stores comments, mapped by comment IDs.

---

## Setup and Deployment

1. Install dependencies:
   ```bash
   npm install
   ```
2. Compile the contract:
   ```bash
   npm run build
   ```
3. Deploy the contract to the Massa blockchain:
   ```bash
    npm run deploy
   ```
4. Interact with the contract using the Massa SDK.

---

## Event Structure

The contract generates events to provide insights into user interactions. Key events include:

- `ContractDeployed`: Triggered when the contract is successfully deployed.
- `TransferOwnership`: Emitted when ownership is transferred.
- `CreatePost`: Triggered when a post is created.
- `UpdatePost`: Emitted when a post is updated.
- `AddComment`: Triggered when a comment is added to a post.
- `LikePost`: Emitted when a post is liked.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
