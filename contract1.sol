pragma solidity ^0.8.16;
// SPDX-License-Identifier: MIT

contract testcontract{
    uint256 value;

    function get() public view returns(uint256){
    return value;
    }

    function set(uint256 _value1, uint256 _value2) public pure returns(uint256 result){
    result=_value1+_value2;
    require(result>100);
    return result;
    
    }

}
