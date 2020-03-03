pragma solidity ^0.5.8;

contract LastInvoker {
    address private lastInvoker;


    event TrueFalse(
        address indexed lastInvoker,
        address indexed _id,
        bool _success
    );

    function getLastInvoker() public returns (bool, address) {

        address result = lastInvoker;
        lastInvoker = msg.sender;
        return (result != address(0x0), result);
    }
}
