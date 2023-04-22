// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract constants{

  /* Constants
    - used for reducing execution gas cost, compared to variables
    - by naming convention is named in CAPITAL LETTERS

  */
  address public constant MY_ADDRESS= 0xEe9e22b3C8c22C0E62BD2fa5a1c78992D00be672; //378 gas/wei= 378*10^-9 gwei = 378*10^-18 ether
  string public constant name = "Aman Kushwaha"; //733 gas/wei= 733*10^-9 gwei = 733*10^-18 ether
}

contract variableGas{
  address public my_address= 0xEe9e22b3C8c22C0E62BD2fa5a1c78992D00be672; //2551 gas/wei= 2551*10^-9 gwei = 2551*10^-18 ether
  string public userName= "Aman Kushwaha"; //3427 gas/wei= 3427*10^-9 gwei = 3427*10^-18 ether
}