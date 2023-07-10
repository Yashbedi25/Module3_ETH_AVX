// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Abstract contract
abstract contract AbstractContract {
    function abstractFunction() public virtual returns (uint256);
}

// Interface
interface InterfaceContract {
    function interfaceFunction() external view returns (string memory);
}

// Main contract implementing the abstract contract and interface
contract SmartContract is AbstractContract, InterfaceContract {
    // Implementing abstract function
    function abstractFunction() public pure override returns (uint256) {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        return result;
    }

    // Implementing interface function
    function interfaceFunction() public pure override returns (string memory) {
        return "Interface Function Work in inherit contract";
    }
}
