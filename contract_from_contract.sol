pragma solidity ^0.5.11;

// Create child contracts
// Store child contract addresses
// Cast contract pointer to address
// Call function of child contract
// Caveat when admin is contract

contract LoanFactory {
    Loan[] loans;

    function createLoan() external {
        // Create instance of loan contract with amount of 100
        Loan loan = new Loan(100);
        loans.push(loan);

        // Call contract function
        loan.reimbures();
    }
}

contract Loan {
    uint256 public amount;
    address admin;

    constructor(uint256 _amount) public {
        amount = _amount;
        admin = msg.sender;
    }

    function witdraw() external {
        // withdrawl logic
    }

    function reimbures() external {}
}
