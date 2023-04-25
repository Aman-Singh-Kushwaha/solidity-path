// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract forAndWhileLoops{   
    uint public i=0;
// loops may be forcefully terminated transaction cost reaches gas limit
    function loops() external {
        uint a;
        for(uint j=0; j< 10; j++) {   //For loops
            if(j==3) continue;
            else if(j==5) break;

            a++;
        }

        while(true){
            if(a==100) break;  // on production never loop longer or pay higher gas
            a++;
        }
        i=a;
    }

}