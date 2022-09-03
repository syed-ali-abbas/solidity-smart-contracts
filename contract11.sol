contract A{
 
    function FunctionA() virtual external pure returns (string memory)
    {
        return "A";
    }

    function FunctionAA() virtual external pure returns (string memory) {
        return "AA";
    }
}

contract B is A{
 function FunctionA() override external pure returns (string memory){
     return "B";
 }
 
}

/*

X
|\
|  \
Y   \
|   /
  Z
So in the above pattern the following order of inheritance is maintianed X -> Y -> Z
*/

contract X{
 
    function FunctionX() virtual external pure returns (string memory)
    {
        return "I am the Base Line of All - First Function";
    }

    function FunctionXX() virtual external pure returns (string memory) {
        return "I am Base Line of all -  Second Function";
    }
}

contract Y is X{
 function FunctionY() virtual external pure returns (string memory){
     return "I am inherited from Contract X. Function - 1";
 }
 function FunctionYY() external virtual pure returns (string memory){
     return "I am inherited from Contract X. Function - 2";
 }



}

contract Z is X,Y{
 function FunctionYY()  override external pure returns (string memory){
     return "I am Z inherited from Y";
 }

}

//If the order of functions is not maintained the function will give error...

