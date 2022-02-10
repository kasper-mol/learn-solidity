pragma solidity ^0.5.11;

contract MyContract {
    // storage (value is stored on blockchain). if it is outside of function auto storage allocation
    uint256 a;

    struct User {
        string name;
    }
    User[] users;

    function foo() external {
        // Create a pointer to certain users data for easy acces on blockchain variable
        User storage user = users[0];
        user.name = "kasper";
        //  Memory variable is lost after execution
        User memory user1 = users[0];
        user1.name = "kasper";
        // stack is only available when function is availaible/running
        uint256 b;
        // Calldata is used for external function when transaction info is used to call function
    }
}
