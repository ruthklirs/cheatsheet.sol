// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
pragma solidity >=0.7.0 <0.9.0;
//class that stores variables
contract Storge{
    //number type variable with 250 bits
    uint256 number;
    //function that initializes the number variable
    function store (uint256 num) public {
        number=num;
    }
    //view: This indicates that the function does not modify the contract's state.
  //non-editable public function that returns the number
    function retrieve() public  view returns (uint256){
        return number;
    }
    
}
