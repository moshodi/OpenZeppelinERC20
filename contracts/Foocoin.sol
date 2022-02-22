//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "node_modules/hardhat/console.sol";

contract Foocoin is ERC20 {
    // constructor gives an initial supply of 1 million with 18 decimals
    // in the ERC20.sol contract the constructor sets the name of the coin with its symbol
    constructor(uint256 _supply) ERC20("Foocoin", "FOO") {
        _mint(msg.sender, _supply * (10 * decimals()));
    }
}
