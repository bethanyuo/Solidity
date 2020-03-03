pragma solidity ^0.5.8;

contract SimpleStorage {
    uint private storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() view public returns (uint) {
        return storedData;
    }
}
