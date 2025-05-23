// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract twitter{
    mapping(address => string) public tweets;

    function createTweet(string memory _tweet) public {
        tweets[msg.sender]= _tweet;
    }


}
