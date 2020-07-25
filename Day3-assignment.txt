pragma solidity >=0.4.17 <0.7.0;

contract Land{
    string public ownerOfTheLand;
    string public landCost;
    string public landLocation;
    
    function Land( string newOwner,string newCost,string newLocation) public{
        ownerOfTheLand = newOwner;
        landCost = newCost;
        landLocation = newLocation;
    }
    
    function setDetails(string newOwner,string newCost,string newLocation)public{
        ownerOfTheLand = newOwner;
        landCost = newCost;
        landLocation = newLocation;
    }
    
    function getDetails() public view returns(string,string,string){
        return(ownerOfTheLand,landCost,landLocation);
    }
    
}