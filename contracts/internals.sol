pragma solidity ^0.8.18;

contract BasicCalc{

    uint256 public result;

    function add(uint256 num) external{
        result+= num;
    }

    function subtract(uint256 num) external{
        result -= num;
    }

    function multiply(uint256 num) external{
        result *=num;
    }

    function get() external view returns (uint256){
    return result;
    }
    }