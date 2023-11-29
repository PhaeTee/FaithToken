// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FaithToken is ERC20 {
    constructor() ERC20("FaithToken", "FEE")
    {
        _mint(msg.sender, 1000000);
    }

    function mint (uint _amount) external{
        _mint( msg.sender, _amount * 10**32);
    }
}