// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract MessageContract{
    event Logs(address indexed from, address indexed _to, string message);

    function MessageFunction(address from, address _to, string calldata txt) public{
        from = msg.sender;
        emit Logs(from, _to, txt);
    }

}
