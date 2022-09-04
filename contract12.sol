//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.7;

contract TestA{
string A;
event Log(string msg);
constructor(string memory _a){
A=_a;
}
function foo() virtual public {
    emit Log("Foo TestA");
    
}

function Bar() virtual public {
    emit Log("Bar TestA");
    
}


}

contract TestB{
    string B;
    constructor(string memory _b){
        B=_b;
    }
event LogB(string msg);
function fooB() virtual public {
    emit LogB("Foo TestB");
    
}

function BarB() virtual public {

    emit LogB("Bar TestB");
    
}
    
}

contract TestAB is TestA, TestB{
  
constructor (string memory _a, string memory _b) TestB(_b) TestA(_a){

}
    
function foo() public override{
    super.foo();
    emit Log("Log AB from A");
    
}

function fooB() public override{
    TestB.fooB();
    TestB.BarB();
    emit LogB("LogAB from B");
}



}
