// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    address private _administrator;

    constructor() {
        // Make the deployer of the contract the administrator
        _administrator = msg.sender;
    }

    function isAdministrator(address user) public view returns (bool) {
        return user == _administrator;
    }
}
