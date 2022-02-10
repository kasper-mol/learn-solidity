pragma solidity ^0.5.11;

contract MyContract {
    // Declare mappings
    mapping(address => uint) balances;

    // CRUD
     function foo() external {
        //  add
        balances[msg.sender] = 100;
        // read
        balances[msg.sender];
        // read
        balances[msg.sender] = 200;
        // delete
        delete balances[msg.sender];
    }

    // Default values
    function foo2() external {
        // balances[somehting] => 0;
    }
    // nested mappings
    mapping(address => mapping(address => bool)) approved;

    function foo3(address spender) external {
        // add
        approved[msg.sender][spender] = true;
        // read
        approved[msg.sender][spender];
        // update
        approved[msg.sender][spender] = false;
        // delete
        delete approved[msg.sender][spender];
    } 

    // array inside mapping
    mapping(address => uint[]) scores;

    function foo4() external {
        // No need to create array, mapping allready created it for us
        scores[msg.sender].push(1)
    }

}