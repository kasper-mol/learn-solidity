pragma solidity ^0.5.11;

contract MyContract {
    // Declaring constructor
    // Difference with functions
    // Admin patterns
    // Calling other functions
    // Calling parent constructor
    uint a;
    address admin;
    constructor(uint _a) public {
        // Set person who deployed it as admin
        admin = msg.sender
        // Constructor is only called when smart contract is deployed, never again after
        // Can only use public or internal 
        a = _a;
    }


}