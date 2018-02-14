pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MuricaCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MuricaCoin(address _owner)  UpgradeableToken(_owner) {
    name = "MuricaCoin";
    symbol = "MURC";
    totalSupply = 1776000000000000000000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}