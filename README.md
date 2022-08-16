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
