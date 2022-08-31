# Solidity Smart Contracts

### Enviroment 
1. Solidity version 0.8.16
2. Remix IDE https://remix.ethereum.org/

### Contract 1

Getter and Setters functions.
Getter function is public and has modifier VIEW.
    View modifier reads the state of state variables from contract storage.
    
Setter function is also public and has modifier PURE.
    Pure modifier is more restrictive and reads local variables values. 
    It does not reads from the contract storage.

User calls setter function and supplies the two integer numbers. The Setter function simply sums the two inputs and assigns it to a variable called as result. The require function will check if the result is greater than 100 it will allow to execute furthur otherwise the contract will revert back saving the gas fees left.

### Contract 2

Enums are used for creating user defined data types. 

enum <enumerator_name> { 
            element 1, element 2,....,element n
} 

First we the contract will check the state, which is on waiting mode by default because we assigned state.awaiting in the constructor. so the isactive method will return false boolean value initially and state will return 0.
After that we activate it using Activate function. Which overwrites the value of state by state.Activate.
In the end we again check the state and it returns 1. After rechecking isactivate function we will get true in response. 

### Contract 3

The contract focuses on Function named as Modifier. The modifier function is used to decrease the redundancy of the code. We have ChangePausedState which is mapped with a boolean datatype. By default Boolean values are set to False. So i have used this function to change the values i.e. true or false.

The main focus of this contract is resolving the below issue:

function inc() public CheckPausedState {<br />
        require(paused==false,"Pause must be FALSE");  //redundant <br />
        count+=1;<br />
    }
    function dec() public CheckPausedState{<br />
        require(paused==false,"Pause must be FALSE"); //redundant <br />
        count-=1;<br />
    }
    
The solution to this problem is creating a Modifier function and place this statement labelled as redundant in that specific function. As shown below:
 
 modifier CheckPausedState(){
        require(paused==false,"Pause must be FALSE");
        _; //it is placded to execute the remaining statement of code
    }
    function inc() public CheckPausedState {
        count+=1;
    }
    function dec() public CheckPausedState{
        count-=1;
    }
    
 Note: The Modifier functions also accept parameters like Modifier func(param1){}
