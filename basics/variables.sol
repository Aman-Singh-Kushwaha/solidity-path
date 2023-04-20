// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract functionLab{
/*
Variable Data  Types:

Signed Integer(int)
Unsigned Integer(uint)
String (string)
Address (address): Holds Ethereum Address 
payable Address (address payable): has more builtin functions( transfer & send)
*/


    // State Variables: is permanentaly stored in contract 
    uint public a; 
    uint public b;
    address k;

    constructor( uint _a,uint _b){  
        a= _a;                        //Ignore Now
        b= _b;
    }
    function sumFunc() private view returns (uint c){
        return a+b;                   //Ignore Now
    }

    function calc() internal view returns (uint){
        // Local Variable : has scope only within brackets will destroy later 
        uint d= sumFunc();
        return d;
    }

    function payableFunc() public payable returns(uint){
      
        //Global Variable:  are special variables used to get info from blockchain
        uint amount= msg.value;
        return amount;
    }
}