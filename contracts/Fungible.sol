//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "hardhat/console.sol";

contract Fungible is ERC20 {
    // constructor gives an initial supply of tokens with 18 decimals
    // in the ERC20.sol contract the constructor sets the name of the coin with its symbol
    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _supply
    ) ERC20(_name, _symbol) {
        _mint(msg.sender, _supply * (10 ** decimals())); //mint tokens: supply amt of tokens with decimal
    }


}
