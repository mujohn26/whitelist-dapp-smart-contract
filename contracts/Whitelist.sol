//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract Whitelist{
  uint8 public maxWhitelistAddresses;

  constructor(uint8 _maxNum){
    maxWhitelistAddresses = _maxNum;

  }

  mapping(address => bool) public whitelistedAddresses;

  uint8 public numAddressesWhitelisted;

  function addAddressToWhitelis() public {

  require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");  

  require(numAddressesWhitelisted<maxWhitelistAddresses, "More addresses cant be added, limit reached");  

  whitelistedAddresses[msg.sender] = true;
  numAddressesWhitelisted+=1;

  }


}