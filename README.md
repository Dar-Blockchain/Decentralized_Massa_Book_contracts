# Massabook

Massabook is a fully decentralized social network inspired by popular platforms like Facebook. Built on blockchain technology, it ensures enhanced security, transparency, and user autonomy by leveraging smart contracts to manage user data and interactions in a trustless environment.

## Overview

Massabook empowers users to:
- **Create and Manage Profiles:** Deploy personal decentralized profiles.
- **Share Content:** Post text and images securely on the blockchain.
- **Build Connections:** Follow other users to receive their latest posts.
- **Engage Socially:** Like and comment on posts, with all interactions securely recorded on-chain.

## Architecture

Massabook's backend architecture is driven by a robust system of smart contracts:

### Profile Factory Smart Contract

- **Role:**  
  Serves as the central contract for creating individual user profiles.

- **Functionality:**  
  - Utilizes a predefined profile template to deploy a dedicated profile smart contract for each user.
  - Ensures a uniform structure for all profiles, simplifying interactions and maintenance.

- **Deployment Process:**  
  1. **User Registration:** When a new user signs up, the Profile Factory is triggered.
  2. **Profile Deployment:** A personalized profile contract is deployed using the standard template.
  3. **Data Initialization:** The profile is initialized with the user's personal and social data.

### Profile Smart Contract

- **Stored Data:**  
  - **Personal Details:** First name, Last name, Avatar.
  - **Social Information:** Bio and additional customizable social data.

- **User Actions:**  
  - **Content Creation:**  
    - Create posts and attach images.
  - **Social Interactions:**  
    - **Follow:** Add other users by saving their address and profile reference in your profile contract.
    - **Feed Updates:** Automatically receive the latest posts from followed users.
    - **Engagement:** Like and comment on posts; each interaction is recorded with reference to the user's profile.

## Features

- **Decentralization:**  
  User data and interactions are maintained on the blockchain with no central authority.

- **User Autonomy:**  
  Full control over personal data, posts, and social engagements.

- **Security & Transparency:**  
  All operations are executed via smart contracts, ensuring verifiable and tamper-proof interactions.

- **Scalable Social Graph:**  
  Efficient on-chain management of user relationships and network evolution.

## Usage

1. **Registration:**  
   Sign up to trigger the Profile Factory, which deploys your unique Profile smart contract.

2. **Profile Management:**  
   Update your personal details (firstname, lastname, avatar, bio) within your profile contract.

3. **Content Posting:**  
   Create posts and add images that are securely stored on-chain.

4. **Social Interactions:**  
   - **Follow:** Store the address and profile reference of other users.
   - **Feed Updates:** Get real-time updates of new posts from your network.
   - **Engage:** Like or comment on posts, with every action linked back to your profile.

## Future Enhancements

- **Enhanced Media Support:**  
  Integration of richer media types and interactive content.

- **Advanced Privacy Controls:**  
  More granular settings for controlling data visibility and interactions.

- **Cross-Chain Compatibility:**  
  Support for multiple blockchain networks to broaden accessibility.

## Contribution

Contributions are welcome! To contribute:
- Fork the repository.
- Submit a pull request with your enhancements or bug fixes.
- For significant changes, please open an issue first to discuss your ideas.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Massabook is dedicated to redefining social networking by putting users in control. Join us in building a more secure, transparent, and decentralized social experience.
