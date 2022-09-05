//XSPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.7;


interface ICounter {
    function count() external view returns (uint);
    function inc() external;
}

contract CallInterface{
    uint public count;
    function Caller(address _counter) external{
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}


//XSPDX-License-Identifier: UNLICENSED

//Write the below code in a seperate .sol file to understand the actual usecase of interfaces in solidity.

pragma solidity 0.8.7;

contract Counter{
    uint public count;
    function inc() external{
        count +=1;
    }
    function dec() external {
        count -=1;
    }
}
