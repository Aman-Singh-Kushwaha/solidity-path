// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract conditional{

    function ifElse( uint _x) pure public returns(uint){
        if(_x <10){
            return 1;
        } else if( _x <20) {
            return 2;
        }
        return 3;
    }

    function ternary( uint _x ) pure public returns(uint){
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        // shorthand way to write if / else statement
        // the "?" operator is called the ternary operator
        return _x < 10 ? 1 : 2;
    }
}