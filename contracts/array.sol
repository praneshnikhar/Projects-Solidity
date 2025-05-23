pragma solidity ^0.8.30;

// contract Array{
//     uint[] public arr;
//     uint[] public arr2 = [1,2,3];

//     uint[10] public fixedArr;
//     string[5] public name;

//     function get(uint i) public view returns(uint){
//     return arr[i];
//     }
// }

contract ArrayExample{
    uint[] public dynamicArray;

    uint[5] public fixedArray;

    function addToDynamicArray(uint value) public{
        dynamicArray.push(value);
    }

    function getDynamicArrayLength() public view returns (uint){
        return dynamicArray.length;
    }
}