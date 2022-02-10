pragma solidity ^0.5.11;

// import contractB so fucntion can be called
import "ContractB.sol";

contract A {
    // Call function of other smartcontract
    // Import keyword
    // Contract interface
    // Error handling

    // Create variable which holds the address for contract B
    address addressB;

    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }

    // Create interface of contract b using the address, then assign to variable b
    function callHelloWorld() external view returns (string memory) {
        InterfaceB b = InterfaceB(addressB);
        // B b = B(addressB); can also be used
        return b.helloWorld();
    }
}
