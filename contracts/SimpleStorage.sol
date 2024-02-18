pragma solidity ^0.8.8;
// SPDX-License-Identifier: UNLICENSED

contract SimpleStorage {
    // this gets initialized to zero
    uint256 favoriteNumber;

    // map [key => string] [value => uint256]
    mapping(string => uint256) public nameToFavoriteNumber;
    
    // object
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    // list/array of object
    People[] public people;

    function store(uint256 _favoriteNumber) public virtual  {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

