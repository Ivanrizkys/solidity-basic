// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Abstract digunakan untuk membuat blueprint dari function/method yang akan di implementasikan di dalam contract
abstract contract Abstract {
    function getNumber(uint a, uint b) public virtual ;
    function sum() public virtual view returns (uint);
}

contract Mathematic is Abstract {
    uint long;
    uint wide;

    function getNumber(uint a, uint b) public override  {
        long = a;
        wide = b;
    }

    function sum() public override  view returns (uint) {
        return long * wide;
    }
}