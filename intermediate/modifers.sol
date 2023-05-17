// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifier{
    //State Variables
    address public owner = msg.sender; // contract deployer address here
    string internal secretPassword = "123456789";
    uint timesBeingCalled = 0;

    modifier isOwner{
        require(msg.sender==owner, "Access Denied, only owner can access"); //will return err message on modifier denial
        _;
    }

    modifier callLimit( uint _callNumber){
        require(_callNumber < 5, "Password Check Limit Exceeded");
        _;
    }

    function checkPassword() public view isOwner returns(string memory){
        timesBeingCalled++;
        return secretPassword;
    }
}