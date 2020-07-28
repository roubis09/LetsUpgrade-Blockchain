pragma solidity ^0.4.21 < 0.6.12;

contract student_Result{
    // All variables
    string public Name;
    uint public Roll_No;
    string public Batch;
    string public Status;
    uint public sub1;
    uint public sub2;
    uint public sub3;
    uint public sub4;
    
    // constructor
    constructor(string newName,uint newRollno,string newBatch,uint m1,uint m2,uint m3,uint m4)public{
        Name = newName;
        Roll_No = newRollno;
        Batch = newBatch;
        

        sub1 = m1;
        sub2 = m2;
        sub3 = m3;
        sub4 = m4;
       
        uint Final_Result = sub1 + sub2 + sub3 + sub4;
        // Total Marks

        // Check the Status fail or pass.
        if(Final_Result < 100){
            Status = "Fail";
        }
        else {
            Status = "Pass";
        }
        
    }
    
    // Show getDetails
    function getDetails()public view returns(string,uint,string,string,uint,uint,uint,uint){
       
        return(Name,Roll_No,Batch,Status,sub1,sub2,sub3,sub4);
        
    } 
    
}
