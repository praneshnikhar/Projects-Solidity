pragma solidity ^0.8.30;

contract SimpleToken{
    uint256 public maxPerMint = 3;

    function mnit(uint256 amount) public{
        require(amount <= maxPerMint, "No More than 3 are allowed");
        
        _mint(amount);
    }
}