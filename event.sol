pragma solidity ^0.5.11;

contract MyContract {
    event NewTrade(
        uint256 indexed date,
        address indexed from,
        address indexed to,
        uint256 amount
    );

    function trade(address to, uint256 amount) external {
        emit NewTrade(now, msg.sender, to, amount);
    }
}
