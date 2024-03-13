// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Owner
 * @dev Set & change owner
 */
//explain

contract Owner {
    //private variable of type address
    address private owner;
    //event fired when the owner changes
    //The function receives 2 addresses (the old owner and the new owner) and saves an atom in the log
    event OwnerSet(address indexed oldOwner, address indexed newOwner);
    //A function that checks whether the caller of the function is the owner
    modifier isOwner() {
        require(msg.sender == owner, "Caller is not owner");
        _;
    }

    //The constructor is called once and initializes the owner to be the owner
//This address represents address 0 - no previous owner
    constructor(){
        owner=msg.sender;
        emit  OwnerSet(address(0), owner);

    }
    //public function that receives a new address of an owner and replaces it with the old owner
    function changeOwner (address newOwner) public  isOwner{
        emit OwnerSet(owner, newOwner);
        owner=newOwner;
    }
    //external- external: This specifies that the function can be called from outside the contract. 
    function getOwner() external  view returns (address){
        return  owner;
    }
}
