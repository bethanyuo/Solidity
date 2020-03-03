pragma solidity ^0.5.8;

contract SimpleToken {
    mapping (address => uint256) balanceOf;

    constructor(uint256 initialSupply) public {
        balanceOf[msg.sender] = initialSupply;
    }

    function transfer(address to, uint256 value) public {
        if (balanceOf[msg.sender] >= value &&
	      balanceOf[msg.sender] + value > balanceOf[to]) {
        balanceOf[msg.sender] -= value; // Subtract the value from the sender
        balanceOf[to] += value; // Add the same value to the recipient
        }
    }

    function balance() public view returns (uint256) {
        return balanceOf[msg.sender];
    }
}
