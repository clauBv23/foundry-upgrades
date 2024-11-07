// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract Counter is UUPSUpgradeable {
    address owner;
    uint256 public number;

    function initialize() public initializer {
        number = 0;
        owner = msg.sender;
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override {}

    uint256[49] private __gap;
}
