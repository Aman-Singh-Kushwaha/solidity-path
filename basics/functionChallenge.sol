// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Calculator{
    function add(uint _a, uint _b) public pure returns(uint){
        return _a + _b;
    }
    function subtract(uint _a, uint _b) public pure returns(uint){
        return _a - _b;
    }
    function multiply(uint _a, uint _b) external pure returns(uint){
        return _a * _b;
    }
    function divide(uint _a, uint _b) external pure returns(uint){
        return _a / _b;
    }
}