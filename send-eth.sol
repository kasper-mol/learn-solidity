pragma solidity ^0.5.11;

contract MyContract {
    mapping(address => uint256) balances;

    // payable keyword is neccecary to receive eth
    function invest() external payable {
        if (msg.value < 1000) {
            revert();
        }
        balances[msg.sender] += msg.value;
    }

    function balanceOf() external view returns (uint256) {
        return address(this).balance;
    }

    function checkSpend() external view returns (uint256) {
        return balances[msg.sender];
    }
}
