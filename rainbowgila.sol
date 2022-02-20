// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract RainbowNFT is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721 ("Twiceku", "TWICEKU") {
    // console.log("RainbowNFT!");
  }

  function mint() public {
    uint256 newItemId = _tokenIds.current();
    _safeMint(msg.sender, newItemId);
    // console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);
    _setTokenURI(newItemId, "ipfs://QmYjYdJTjKSxBCpMnBs4dRJZGGGrTZYfmmiQoiuV47vsNC");
    _tokenIds.increment();
  }
}
