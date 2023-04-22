// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract arrays{
  uint[] public dynamicArr = [1, 3, 5]; // No length fixed
  uint[3] public fixedArr = [2, 4, 6];  // Has fixed length

  uint len;
  
  
    function operations() external {
      dynamicArr.push(9);  // Addes value to last : 1,3,5,9
      dynamicArr[3] = 7;   // Acessing via index and changing : 1,3,5,7
      delete dynamicArr[3]; // 1, 3, 5, 0 (<- 7 changes to 0)
      dynamicArr.pop();    // 1,3,5

      //creating array in memory
      uint[] memory a= new uint[](5); // Must be static(fixed) array
      
      len= a.length;
    }

    //returning whole array is NOT a good practice
    function returnArray() external view returns(uint[] memory){ 
        //returns type has memory cause it copies to memory which printed out 
        return dynamicArr;
    }
}