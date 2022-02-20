// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract RainbowNFT is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  // Bikin Nama Contract
  constructor() ERC721 ("Twise", "TWISE") {
    // console.log("RainbowNFT!");
  }

  // minting nft menggunakan url ipfs
  function mint() public {
    uint256 newItemId = _tokenIds.current();
    _safeMint(msg.sender, newItemId);
    _setTokenURI(newItemId, "ipfs://QmYjYdJTjKSxBCpMnBs4dRJZGGGrTZYfmmiQoiuV47vsNC");
    _tokenIds.increment();
  }
}
