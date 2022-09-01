contract Array{
    uint[] public nums=[1,2,3];
    uint[] public numFixed;
   uint[] public arr;


    function arrayFunction() external{
        nums.push(5); // [1,2,3,5]
        uint x = nums[1]; 
        nums[2]=666; //[1,2,666,5]
        delete nums[3];//[1,2,666,0]
        nums.pop(); //[1,2,666] POP removes the last element from the array

        //Create an array in Memory
        uint[] memory a = new uint[](5);//array in memory has fixed size so you won't be able to 
                                        //call push and pop.
        //a.push(4); // will not work
        //a.pop()// will not work
        // we can only do for array in memory is to update or get the value.



    }


function Remove(uint index_) public{
    for(uint i = index_; i<arr.length-1;i++){
        arr[i]=arr[i+1];
    }
    arr.pop();
}



function ArrayReplaceFunction(uint index_) public{
    arr[index_]=arr[arr.length-1];
    arr.pop();
}
function testFunction() public{
     arr=[1,2,3,4,5,6];
     ArrayReplaceFunction(1);
     assert(arr[0]==1);
     assert(arr[1]==6);
     assert(arr[2]==3);
     assert(arr[3]==4);
     assert(arr[4]==5);
    
}
function Arr() public view returns (uint[] memory){
return arr;

}

}
