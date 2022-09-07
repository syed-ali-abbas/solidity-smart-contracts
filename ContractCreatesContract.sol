//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.7;

contract Account{
 address public bank;
 address public owner;

 constructor(address _owner) payable{
     bank=msg.sender;
     owner=_owner;
 }
}

contract AccountFactory{
    Account[] public accounts;

    function createAccount(address owner) external payable{
        Account account = new Account{value:111}(owner);
        accounts.push(account);
    }
}
