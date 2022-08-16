pragma solidity ^0.8.16;
// SPDX-License-Identifier: MIT

contract testcontract{
    enum State{Awaiting, Activate, Stop}

    State public state;

    constructor(){

        state=State.Awaiting;
    }

    function Activate() public{

    state=State.Activate;

    }
    function isActive() public view returns(bool){

        return state==State.Activate;
    }

}
