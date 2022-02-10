pragma solidity ^0.5.11;

contract MyContract {
    // tx
    tx.origin

    // msg
    msg.value
    msg.sender

    Alice => Smartcontract A      => Smartcontract B
             tx.origin = Alice       tx.origin = Alice
             msg.sender = Alice      msg.sender = Smartcontract A
    // block
    
}