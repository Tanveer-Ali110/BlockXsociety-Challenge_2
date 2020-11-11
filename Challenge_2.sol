pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol";


contract Challenge_2 is Ownable{
    
    using SafeMath for uint256;
    
    uint256 internal input;
    
    function setNumber(uint256 _input) public{
         input = _input;
    }
    
    function getNumber() view public returns(uint256){
        return input;
    }
    
    function updateNumber() view public onlyOwner returns(uint256){
        
        return input.add(1);
    }
}