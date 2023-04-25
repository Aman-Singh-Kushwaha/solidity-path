// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract FunctionTypes{
    /* Access Modifiers in function:-
        - public : can be acessed by anywhere in or out of contact/functions
        - private : only can used within contract
        - internal : these function can be used as function inside function like recursion
        - external : cannot be used in recursion or inside function 

      View Function: they ensure to NOT modify state variable BUT can read it

      Pure Function: they can Neither read Nor write to state variables, they take parameters and returns output

      Payable Function : these special function is able to send/recieve native blockchain token
    */
    uint public a = 213; 
    function publicfunc() public {
        //code
        a += 120;
    }

    function Recursive(uint n) internal {
        // code 
        a += 100;
        n--;
        if (n>1) Recursive(n);
    }

    function nonRecursive() external{
        //code
        a += 123;
        Recursive(5);
        // nonRecursive();  not visible error
    }

    function privatefunc() private {
        //code
        a += 111;
        Recursive(2);
        // nonRecursive(); error
    }

    function readStateOnly() private view returns(uint) {
        uint b = a;
        return b;
    }

    function purefunc(string memory apneKaamSeKaam ) public pure returns(string memory){
        return apneKaamSeKaam;
    }
}