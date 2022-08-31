contract Ownable{
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    modifier CheckOwner(){
        require(msg.sender == owner,"Only Owner can perform this execution");
        _;        
    }
    function setOwner(address _address) external CheckOwner{
        require(_address!=address(0),"invalid Address");
        owner = _address;
    }
    function OnlyOwnerCanCall() external CheckOwner{}
    function AnyOneCanCall() public{}
}
