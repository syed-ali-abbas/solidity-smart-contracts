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

enum <enumerator_name> { <br />
            element 1, element 2,....,element n<br />
} <br /><br />

First we the contract will check the state, which is on waiting mode by default because we assigned state.awaiting in the constructor. so the isactive method will return false boolean value initially and state will return 0.
After that we activate it using Activate function. Which overwrites the value of state by state.Activate.
In the end we again check the state and it returns 1. After rechecking isactivate function we will get true in response. 

### Contract 3

The contract focuses on Function named as Modifier. The modifier function is used to decrease the redundancy of the code. We have ChangePausedState which is mapped with a boolean datatype. By default Boolean values are set to False. So i have used this function to change the values i.e. true or false.

The main focus of this contract is resolving the below issue:

function inc() public CheckPausedState {<br />
        require(paused==false,"Pause must be FALSE");  // redundant <br />
        count+=1;<br />
    }<br /><br />
    function dec() public CheckPausedState{<br />
        require(paused==false,"Pause must be FALSE"); // redundant <br />
        count-=1;<br />
    }<br /><br />
    
The solution to this problem is creating a Modifier function and place this statement labelled as redundant in that specific function. As shown below:
 
 modifier CheckPausedState(){<br />
        require(paused==false,"Pause must be FALSE");<br />
        _; // it is placed to execute the remaining statement of code<br />
    }<br /><br />
    function inc() public CheckPausedState {<br />
        count+=1;<br />
    }<br /><br />
    function dec() public CheckPausedState{<br />
        count-=1;<br />
    }<br /><br />
    
 Note: The Modifier functions also accept parameters like Modifier func(param1){}
 
 ### Contract 4
 
 Constructors in solidity are used to deploy the contract and initialize the state variables. Constructors can be parameterized.
 In this contract the the address of contract deployer is assigned to "deployerAddress" i.e. deployerAddress=msg.sender. 
 To see how the constructor takes parameter input the we have used the variable x_ and assigned it a value of x via user input within constructor.
 
  ### Contract 5
  
  Ownable Contract is basically teaching the concept of How to create the functions that only Owner's can call and and How to restrict the other's from calling the function. Follow the below steps:
  1. In the first step we passed the message.sender value in the state variable initiated globally.
  2. Create a modifier function in which mention the condition which check's if the user is owner or not.
  3. In the second function "setOwner" we are basically changing the ownership.
  4. Last two functions i.e. "OnlyOwnerCanCall" and "AnyOneCanCall" are just for testing purposes. If our code is running successfully or not.
  
   ### Contract 6
   
   In this contract the output of a function is focused. 
   In the First Function we can simply see that the function returns two outputs i.e. an integer and a boolean value.
   In the second function we have named the both parameters i.e. uint x and bool b.
   In the third function we have assigned the both values in function body instead of returning them.
   
 ### Contract 7
 
 There are two types of arrays in solidity the Dynamic Arrays and Static Array's.
 The Arrays have functions like get, update, delete, pop and push. 
 
 The memory keyword can be used with array in a function. It holds the functions argument data and removes after execution completes. But we cannot push or pop from the array having memory type. Only get and assign operations are applicable on them.
 
 Removing array elements is interesting scope when working on solidity array's.
 If you use Delete keyword for removing the array elements. It will place the default type value after removing the specified value. It is not an effecient way as it consumes alot of gas. To make it effecient we can do is manually delete the elements. For this we have a Shift left algorithm which works as follows:
 
 Array = [ 1 ,2 ,3 ,4 ,5 ,6]</br>
 
 Remove(2); //Remove value at index 2</br>
 
 After removing we have results: [1, 2, 4, 5, 6, 6]</br>
 
 Now the value is removed but last elements are duplicated. To remove the redundency we will call POP(); function.
 The above algorithm will maintain the order of array elements.
 
 
 Another More Efficient way for Removing element's from array is to just replace the last element by the element to be removed. It is most effecient way but it disturbs the order of array elements.
 
  arr[index_]=arr[arr.length-1];</br>
  arr.pop();
 
 
### Contract 8

Mappings act as hash tables which consist of key types and corresponding value type pairs. They are defined like any other variable type in Solidity:

mapping(_KeyType => _ValueType) public mappingName

Mapping is used to create key value pairs. We can also create nested mapping's. We can assign the values to the mapping variable. like shown below:

isFriend[msg.sender][0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2]=true;</br></br>
According to the above solidity statement: the person who calls the function and the address passed both are set to true means "Both are friends". To make it simple we simply define the balance of msg.sender using mapping as shown below:
 
 //functionCallerBalance = 3333;</br>
 balances[msg.sender]=3333;

### Contract 9

Indexed keyword is used to search or filter the informtion logged on the blockchain storage.
Event keyword is used to log the data on the blockchain. In the example of contract we have created the contract no 9 as event and emitted it in the sendmessage function. Since the information will be stored on the blockchain it is called as "Transaction" so we are not going to use view or pure keywords. Because these words used for read only functions. 


### Contract 10

Solidity also gives us the facility to inherit other contract. When Applying inheritance the parent contract function signature must include "virtual" and if you want to change the value of inherited function you can use a keyword "override" in the function signature.
The child contract must contain "is" keyword when inheriting for example,

If A is a Parent contract and you want to inherit B from A so below syntax will be followed:

contract B is A{
//Your Code
}

When using multiple inheritance, the order of inheritance must be from base like to derived. Otherwise the IDE will give error while compiling the contract.


### Visibility

public - accessible everywhere</br>
private - accessible within contract only</br>
internal - accessible within contract and child contracts</br>
external - only from outside contract. You can use this.funName to call external functions within the contract itself but it takes gas.</br>

### Immutable Variables

These variables are initialized only once and its value cannot be changed. They are like constant's. Example of Immutable variables can be contract owner address.

### Payable

Payable keyword is attached to send and recieve ethers.

### Fallback():

Fallback function is used to send and recieve ethers. It has a keyword payable along the signature. If you will not create a reciever function, fallback function will be executed. </br>
You can also create a Reciver function as payable to send or recieve ethers. </br>
The main difference between fallback and reciever function is that if you implemented both functions and user makes a transaction, if the transaction contains msg.value the fallback function will be executed on the other hand if the msg.value is empty, the receiver function will be executed. But if there is no reciever function implemented then the fallback function will be executed.

### Send Ether

There are three ways to send ethers:
1. Transfer - 2300 gas and reverts when execution fails.
2. Send - 2300 gas and returns boolean value i.e. true on success and false on transaction failure.
3. Call - All gas, returns bool and data

##$ Interface

In solidity interfaces are implemented same but the way they are called is different.</br>
The InterfaceCaller contract actually calls the Interface and wrap's the address of the completely implemented contract. So keeping the same interface and changing the actual contract address will make it clear about how to use the concept of interface specifically in interface
