pragma solidity ^0.4.24;

import "./Ownable.sol";

/*
Pausible super contract
*/
contract Pausible is Ownable {

    bool public active = false;

    event ActivateContract(address owner);
    event DeactivateContract(address owner);

    /** Abstract contract
     **/
    constructor() public {
        active = true;
    }

    modifier onlyWhenActive() {
        require(active, "Contract is not active");
        _;
    }

    modifier onlyWhenInactive() {
        require(!active, "Contract is not inactive");
        _;
    }

    function activate() public onlyWhenInactive onlyOwner {
        emit ActivateContract(msg.sender);
        active = true;
    }

    function deactivate() public onlyWhenActive onlyOwner {
        emit DeactivateContract(msg.sender);
        active = false;
    }
 
}