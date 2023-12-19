//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {script} from "forge-std/script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract Deploy_Contract is script{
    function run() external returns (SimpleStorage){
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}