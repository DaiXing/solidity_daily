// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {
    ERC20
} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {FixedPointMathLib} from "lib/solmate/src/utils/FixedPointMathLib.sol";

contract Hello is ERC20 {
    using FixedPointMathLib for uint256;

    constructor() ERC20("hello token", "HelloT") {}

    function info()
        public
        view
        returns (string memory namex, string memory symbolx, uint256 num)
    {
        namex = name();
        symbolx = symbol();
        uint256 a = 3355;
        uint256 b = a.mulDivDown(99, 18);
        uint256 supply = totalSupply();
        num = b + supply;

        // ERC20 ee = new ERC20();
        // ee.totalSupply();
    }
}
