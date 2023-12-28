// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import other file that contains SimpleStorage type contract
import "./SimpleStorage.sol";

// will be child class of Simple storage
contract StorageFactory  {

    // global variable array that keeps track of contracts created
    SimpleStorage[] public storageContractArray;

    function createStorageContract() public {
        SimpleStorage storageContract = new SimpleStorage();
        // We want to save the new contract above that we created named 'storageContract' into our ContractArray
        storageContractArray.push(storageContract);
    }

    // want to store to the parent contract
    function Store(uint256 index, uint num)  public {
        // to interact with any contract we always need the

        // Address
        // ABI - Application Binary Interface of the contract

        // -> we automatically get the ABI when we import a contract ('./SimpleStorage.sol') 
        // storageContractArray[index] gives us the address of the contract we want and we store it to the temp variable of type object SimpleStorage
        SimpleStorage temp = storageContractArray[index]; 
        // the store function is part of the SimpleStorage contract (class)
        temp.store(num);
    }

    function Get(uint256 index) public view returns(uint256){
        SimpleStorage temp = storageContractArray[index];
        return temp.retrieve(index);
    }
}
