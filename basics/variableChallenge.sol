// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// Challenge: Write a simple contract and declare four different types of variables. Write get and set functions for each of these variables.
contract variables{
    uint num;
    bool isConnected;
    address userWallet;
    string userName;

// Writing State Variables
    function setNumber(uint _number) public{
        num = _number;
    }

    function setBool(bool _Connection) public {
        isConnected= _Connection;
    }

    function setName(string memory _name ) public {
        userName = _name;
    }

    function setAddress(address _address) public {
        userWallet = _address;
    }


// Reading State Variables
    function getNumber() public view returns(uint){
        return num;
    }
   
    function getName() public view returns(string memory){
        return userName;
    }

    function getWalletAddress() public view returns(address){
        return userWallet;
    }

    function getConnectionStatus() public view returns (bool){
        return isConnected;
    }
}