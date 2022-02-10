pragma solidity ^0.5.11;

contract MyContract {
    // storage (value is stored on blockchain). if it is outside of function auto storage allocation
    uint a;

    struct User {
        string name;
    }
    User[] users;
    
    function foo() external {
        // Create a pointer to certain users data for easy acces on blockchain variable
        User storage user = users[0]
        user.name = 'kasper'
        //  Variable is lost after execution
        User memory user = users[0]
        user.name = 'kasper'
    }
}