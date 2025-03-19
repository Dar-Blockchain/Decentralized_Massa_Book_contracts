Massabook
Massabook is a fully decentralized social network inspired by traditional platforms like Facebook, but built on blockchain technology to offer enhanced security, transparency, and user control. Instead of relying on centralized servers, Massabook leverages smart contracts to ensure that user data and interactions are handled in a trustless and decentralized manner.

Overview
Massabook enables users to:

Create and manage their own decentralized profiles.
Share posts with text and images.
Follow other users to receive updates on their latest posts.
Engage with content through likes and comments.
Architecture
Massabook’s architecture is centered around a smart contract system that facilitates decentralized user profiles and interactions:

Profile Factory Smart Contract
Purpose:
Acts as the central contract for deploying new user profile smart contracts.

Functionality:

Utilizes a profile template to generate a unique profile contract for each new user.
Ensures a standardized structure across all user profiles.
Deployment Flow:

User signs up on Massabook.
The Profile Factory uses the profile template to deploy a new profile contract tailored for the user.
The deployed profile contract stores the user's information and interactions.
Profile Smart Contract
Stored Data:
Personal Information: First name, Last name, Avatar.
Social Data: Bio and other customizable social information.
User Actions:
Post Creation: Users can create new posts and attach images.
Social Interactions:
Follow: When a user follows someone, the system records the followed user's address and profile reference in the follower's profile contract.
Feed Updates: Followers receive the latest posts from the users they follow.
Engagement: Users can like or comment on posts, with each interaction linked to the corresponding user's profile.
Features
Decentralization:
No central authority controls user data; all interactions are governed by smart contracts.

User Autonomy:
Users maintain full control over their personal data, posts, and social interactions.

Transparency & Security:
The blockchain-based system ensures transparency in operations and security against tampering.

Scalable Social Graph:
Efficiently manage user relationships through on-chain interactions, enabling a robust and evolving network.

Usage
Sign Up:
When a user signs up, the Profile Factory smart contract deploys a new Profile smart contract based on the predefined template.

Profile Management:
Users can update their personal information (firstname, lastname, avatar, bio) directly within their profile smart contract.

Posting Content:
Create new posts and attach images. Posts are stored on-chain, ensuring immutability and verifiability.

Following and Engagement:

Follow: Add other users to your network by storing their address and profile reference in your profile smart contract.
Feed: Receive the latest posts from followed users.
Like/Comment: Interact with posts; each interaction is associated with your profile to maintain an on-chain record of engagements.
Future Enhancements
Enhanced Media Support:
Integration of richer media types and content formats.

Advanced Privacy Controls:
More granular privacy settings to control who can view or interact with your profile.

Cross-Chain Compatibility:
Expand the platform to support multiple blockchain networks.

Contribution
We welcome contributions from the community! If you have ideas, bug fixes, or enhancements, please fork the repository and submit a pull request. For major changes, open an issue first to discuss what you would like to change.

License
This project is licensed under the MIT License. See the LICENSE file for more details.

Massabook aims to redefine social networking by putting power back in the hands of the users. Join us in building a more secure, transparent, and decentralized digital social space.