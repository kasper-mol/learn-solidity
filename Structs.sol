pragma solidity ^0.5.11;

contract MyContract {
    // declare struct
    struct User {
        address addr;
        uint256 score;
        string name;
    }
    // array of struct
    User[] users;

    // mapping of struct
    mapping(address => User) userList2;

    function foo(string calldata _name) external {
        // CRUD
        // Create in order or user object to pass
        User memory user1 = User(msg.sender, 0, _name);
        User memory user2 = User(msg.sender, 1, _name);
        User memory user3 = User({name: _name, score: 0, addr: msg.sender});
        // Read
        user3.addr; // => user3 address
        // update
        user3.score = 20;
        // delete
        delete user1;

        // Array of struct
        users.push(user2);

        // Create new user in struct mapping
        userList2[msg.sender] = User(msg.sender, 0, _name);
    }
}
