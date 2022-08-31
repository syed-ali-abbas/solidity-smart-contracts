contract Constructors{

    address public deployerAddress;
    uint public x_;

    constructor(uint x) {
        deployerAddress = msg.sender;
        x_=x;
    }
}
