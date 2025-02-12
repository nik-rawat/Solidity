// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {

    uint256 myFavoriteNumber;

    uint256 [] listOfFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public Nik = Person(22, "Nik");

    // Person public Nik = Person({favoriteNumber: 22, name: "Nik"});
    // Person public Kar = Person({favoriteNumber: 12, name: "Kar"});
    // Person public Kesh = Person({favoriteNumber: 42, name: "Kesh"});

    // // Static Array of size 4
    // Person [4] public  listOfPeople;

    // Dynamic Array
    Person [] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store (uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name,uint _favoriteNumber) public {
        Person memory newPerson = Person({favoriteNumber: _favoriteNumber, name: _name});
        listOfPeople.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}