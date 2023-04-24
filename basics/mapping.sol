// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

// Maaping stores {key: value} pair like pair in C++, dictionary in python
contract Mapping{
    mapping(address => uint) public accBalance;   // key: address  value: uint
    mapping(address => mapping(address=>bool)) isFriend;  // nested mapping

    function operations() external {
        accBalance[msg.sender] = 1234; //Creating key value pair
        uint bal1 = accBalance[msg.sender];
        uint bal2 = accBalance[address(1)]; // this key doesn't exist so returns default 0

        accBalance[msg.sender] += 8765; // Updating key's value 1234 -> 9999
        delete accBalance[msg.sender];
        delete bal1 ;
        delete bal2;

        isFriend[msg.sender][address(this)] = true; // Acessing nested key:{key:value} 

    }
}