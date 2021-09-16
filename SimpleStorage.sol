//SPDX-License-Identifier: MIT;

pragma solidity 0.7.5;

contract SimpleStorage {
    
    uint favoriteNumber;
    
    function setNumber(uint _number) public {
        favoriteNumber = _number;
    }
    
    function getNumber() public view returns(uint) {
        return favoriteNumber;
    }
}
