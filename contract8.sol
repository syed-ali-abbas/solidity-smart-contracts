contract Mapping{

mapping(address=>uint) public balances;
mapping(address=>mapping(address=>bool)) public isFriend;

    function GetBalance() public{
        isFriend[msg.sender][0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2]=true;
    }

}
