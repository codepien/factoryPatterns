//SPDX-License-Identifier: MIT;

pragma solidity 0.7.5;

import "./SimpleStorage.sol";

contract StorageFactory {
    
    SimpleStorage[] public simpleStorageArray;
    
    function createContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    function sfSetNumber(uint sfIndex, uint sfNumber) public {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[sfIndex]));
        simpleStorage.setNumber(sfNumber);
    }
    
    function sfGetNumber(uint sfIndex) public view returns(uint) {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[sfIndex]));
        return simpleStorage.getNumber();
    }
    
}