pragma solidity ^0.5.11;

contract MyContract {
    // transfer
    // adress vs address
    // address payable casting
    // msg.sender
    // send vs transfer

    function sendEther(address payable recipient) external {
        recipient.transfer(1 ether);
        // transfer ehter from smartcontract to reciptient

        address payable a;
        a = recipient;
        a.transfer(100);
        msg.sender.transfer(100);
        recipient.send(1 ether);
    }
}
