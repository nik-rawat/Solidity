// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {

    //type visibility name;
    SimpleStorage[] public listOfSimpleStorageContracts;
    // address[] public listOfSimpleStorageAddresses;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // address
        // ABI - Application Binary Interface
        // SimpleStorage mySinpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        // SimpleStorage mySimpleStorage = SimpleStorage( listOfSimpleStorageAddresses[_simpleStorageIndex] );

        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfRead(uint256 _simpleStorageIndex) view public returns (uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}