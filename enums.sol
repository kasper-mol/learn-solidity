pragma solidity ^0.5.11;

contract MyContract {
    // Declare enum, convention all uppercase
    // Enum is variable with limited possible values
    enum STATE { INACTIVE, ACTIVE}
    STATE state;

    function setToActive() external {
        state = STATE.ACTIVE
    }

    function foo() external {
        if (state == STATE.ACTIVE) {
            // run this
        }
    }

    function bar(STATE _state) {

    }
}