contract FunctionOutputs{
    function returnMany() public pure returns (uint,bool){
        return (1, true);
    }

    function namedVariables() public pure returns(uint x, bool b){
        return (1,true);
    }
    function assignedVariables() public pure returns(uint x, bool b){
        x=2;
        b=true;
    }

    function destructuringAssignments() public pure{
        (uint x,bool b) = returnMany();
    }

}
