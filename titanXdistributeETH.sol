// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITITANX {
  function distributeETH() external;
}
contract titanXdistributeETH {

  receive() external payable { 
    if (msg.sender != address(0xf19308f923582a6f7c465e5ce7a9dc1bec6665b1)){
    ITITANX(0xf19308f923582a6f7c465e5ce7a9dc1bec6665b1).distributeETH();
    require(address(this).balance >= msg.value * 10**9); //msg.value = (minEthReturned + balance) in gwei
    }
  }

  function withdrawfunds() external {
    payable(0x454894D059cda0Ea3767DC803ce60a19E0895e1D).transfer(address(this).balance);
  }


}
