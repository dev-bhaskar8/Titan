// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITITANX {
  function distributeETH() external;
}
contract titanXdistributeETH {

  receive() external payable { 
    if (msg.sender != address(0xd9145CCE52D386f254917e481eB44e9943F39138)){
    ITITANX(0xd9145CCE52D386f254917e481eB44e9943F39138).distributeETH();
    require(address(this).balance >= msg.value * 10**18);
    }
  }

  function withdrawfunds() external {
    payable(0x454894D059cda0Ea3767DC803ce60a19E0895e1D).transfer(address(this).balance);
  }


}
