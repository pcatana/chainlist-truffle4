pragma solidity ^0.4.18;

contract Ownable {
    //state variables
    address owner;

    //modifiers
    modifier onlyOnwer() {
        require(msg.sender == owner);
        _;
    }

    //constructor
    function Ownable() public {
        owner = msg.sender;
    }
}