# LiRen
Demo project to show deployment the ERC-1155 smart contract to Ethereum (default Rinkeby testnet). 

## New to NFT?
Check the related information about NFT smartcontract in following links:<br /><br />
<b>ERC-721</b><br /> A standard for representing ownership of non-fungible tokens where each token is unique. ERC-721 provide basic NFT functionalities and is most widely used by NFT projects.
Please find full functions provided by ERC-721 at [ERC-721](https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC721).<br /><br />
<b>ERC-1155</b><br />A Non-fungible token standard developed by enjin. Besides of functions provided by ERC-721, ERC-1155 supports multi token standards, batch operation and semi-fungible token, and ERC-1155 is used for the LiRen demo project. 
Please find full functions provided by ERC-1155 at [ERC-1155](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol).
## How to get mnemonics and API keys? 
Three credentials are required in file `secret.json`.
### mnemonics
A way creating mnemonics with [npx](https://github.com/npm/npx):
```
npm install -g npx
npx mnemonics
```
Because signature and address can be made with mnemonics, please be noticed you are <b>NEVER</b> expected to share the info with others. <br />
Check [BIP-0039](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki) for more details of mnemonics.
### Ethereum API key
Ethereum API can be relied to send transactions to Ethereum network without an Ethereum node. Ethereum API keys third-party service providers includs [infura](https://infura.io/), [alchemy](https://www.alchemy.com/), [Morails](https://moralis.io/), etc.
### EtherScan API key
EtherScan API keys are provided by [EtherScan](https://etherscan.io/), and API keys allow you to access Ethereum data. Without EtherScan API keys, smart contracts is not able to be verified with `truffle-verify-plugin`. 
## Test Tokens
Please get the rinkeby tokens at [Ethereum(rinkeby) faucet](https://faucet.rinkeby.io/). In case the faucet offline, [chainlink faucet](https://faucets.chain.link/rinkeby) provide Chainlink and Ethereum token. 
## Deployment
```
git clone https://github.com/QingyangKong/LiRen
npm install -g truffle
truffle compile
truffle migrate --network rinkeby
```
Hope you enjoy! :muscle:
