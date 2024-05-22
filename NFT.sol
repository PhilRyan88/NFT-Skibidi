// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract GameZ is ERC721URIStorage {
    using Counters for Counters.Counter;
 

    constructor() ERC721("Skibidi", "SKBD") {}

    function awardItem(address fan, string memory tokenURI) public {
        uint256 newItemId = _tokenIds.current();
        _mint(fan, newItemId);
        _setTokenURI(newItemId, tokenURI);

        _tokenIds.increment();
    }
}
