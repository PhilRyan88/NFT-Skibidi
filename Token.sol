// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Skibidi is ERC20 {
    constructor(uint256 initialSupply) ERC20("SkibidiRoshan", "RGAY") {
        _mint(msg.sender, initialSupply);
    }
}