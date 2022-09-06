//SPDX-License-Identifier:UNLICENSED
pragma solidity 0.8.7;

contract TestDelegateCall{
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) external payable{
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}


contract DelegateCall{
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _test, uint _num) external payable{
        (bool success, bytes memory data)=_test.delegatecall(abi.encodeWithSignature("setVars(uint256)",_num));
     require(success,"delegate call failed");    
    }


}
