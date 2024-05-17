// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;



contract GameZ is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Skibidi", "SKBD") {}

    function awardItem(address fan, string memory tokenURI) public {
        uint256 newItemId = _tokenIds.current();
        _mint(fan, newItemId);
        _setTokenURI(newItemId, tokenURI);

        _tokenIds.increment();
    }
}
