// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Staking.sol";
import "../src/Timidan.sol";

contract StakingTest is Test {

    function mkaddr(string memory name) public returns (address) {
        address addr = address(
            uint160(uint256(keccak256(abi.encodePacked(name))))
        );
        vm.label(addr, name);
        return addr;
    }

    function testPrint() public {
        console.log(mkaddr("Micheal"));
        console.log(mkaddr("Johnson"));
        console.log(mkaddr("Givon"));
        console.log(mkaddr("Jaden"));
        console.log(mkaddr("Steve"));
        console.log(mkaddr("Bunny"));
        console.log(mkaddr("Skywalker"));
        console.log(mkaddr("water"));
        console.log(mkaddr("kebi"));
        console.log(mkaddr("merkle"));
        console.log(mkaddr("ruth"));
    }
}