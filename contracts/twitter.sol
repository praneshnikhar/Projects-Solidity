// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract twitter {
    uint16 constant MAX_TWEET_LENGTH = 280;

    struct Tweet{
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping(address => Tweet[]) public tweets;

    function createTweet(string memory _tweet) public {
       //conditional
       //if tweet length <=200 then ok or revert
       require(bytes(_tweet).length<=MAX_TWEET_LENGTH ,"Tweet is too long !" );
       
        Tweet memory newTweet = Tweet({
            author:msg.sender,
            content:_tweet,
            timestamp:block.timestamp,
            likes:0

        });
        tweets[msg.sender].push(newTweet);
    }

    function getTweet(address _owner, uint _i) public view returns(Tweet memory){
        return tweets[_owner][_i];
    }
    function getAllTweets(address _owner) public view returns(Tweet[] memory){
        return tweets[_owner];
    }


}
