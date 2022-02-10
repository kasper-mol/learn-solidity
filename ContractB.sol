pragma solidity ^0.5.11;

contract InterfaceB {
    // Only put functions that are called from other contracts
    function helloWorld() external pure returns (string memory);
}

contract B {
    function helloWorld() external pure returns (string memory) {
        return "Hello world";
    }
}
