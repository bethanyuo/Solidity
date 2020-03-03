pragma solidity ^0.5.8;

contract Incrementor {
    uint private value;

    function increment(uint delta) public {
        value += delta;
    }

    function get() view public returns (uint) {
        return value;
    }
}
