contract FunctionModifier{

    bool public paused;
    uint public count;

    function ChangePausedState() public{
        if (paused==false){
            paused = true;
        }
        else{
            paused=false;
        }
    }
    modifier CheckPausedState(){
        require(paused==false,"Pause must be FALSE");
        _;
    }
    function inc() public CheckPausedState {
        count+=1;
    }
    function dec() public CheckPausedState{
        count-=1;
    }
}
