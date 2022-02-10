pragma solidity ^0.5.11;

import "erc20_token.sol";

contract TransferToken {
    // 1. Import erc20 token
    // 2. transfer()
    // 3. transferFrom() / approve()

    function transfer() external {
        // Create reference for token address and send amount to caller of function
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        token.transfer(msg.sender, 100);
    }

    function transferFrom(address recipient, uint256 amount) external {
        // Create reference for token address
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        // Call function
        token.transferFrom(msg.sender, recipient, amount);
    }
}

contract Owner {
    function transfer(address recipient, uint256 amount) external {
        // Create reference for token address
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        // Approve address to spend certain amount of token, now dummy adress
        token.approve(0x583031D1113aD414F02576BD6afaBfb302140225, amount);

        // Create pointer to other smart contract with the transfer function
        TransferToken transfertoken = TransferToken(
            0x583031D1113aD414F02576BD6afaBfb302140225
        );
        // Call function call function from other smart contract
        TransferToken.transferFrom(recipient, amount);
    }
}
