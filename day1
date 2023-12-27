// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

    contract SimpleStorage{

        struct People{
            uint256 num;
            string name;
        }

        // array of objects {people}
        People[] public people;

        //datastructure : mapping string to a number
        mapping(string => uint256) public myMap;

        uint256 public favoriteNum;  

        // we can specify different data locations such as (memory, calldata, and storage)

        // the reason name has memory keyword because we have two ways of storing a string

        // memory -> temp storage for the duration of the function (local)

        // storage -> stored on Etherum block chain, when you want it to be part of the contracts state (global)

        //calldata -> read-only in function (read-in)

        function addPerson(string memory name, uint256 num) public {
            people.push(People(num,name));
            myMap[name] = num;
        }

        //view and pure keywords don't modify the state of the block chian

        function store (uint256 _favouriteNum) public {
            favoriteNum = _favouriteNum;
            
        }
    }
