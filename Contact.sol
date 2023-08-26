// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Access modifier
// Utuk menentukan jenis akses dari setiap variabel atau function
// public = Semua dapat mengakses
// external = tidak dapat diakses oleh contract internal (hanya eksternal)
// internal = hanya bisa diakses oleh internal dan contract turunan (inheritance)
// private = hanya bisa diakses oleh contract internal

contract Parent {
    uint private data;
    uint public info;

    // constructor ini dijalankan ketika contract pertama kali dieksekusi
    constructor() {
        info = 10;
    }

    function increment(uint a) private pure returns(uint) {return a + 1;}

    function setIncrement() public pure returns(uint) {return increment(2);}

    // public
    function updateData(uint a) public {data = a;}
    function getData() public view returns(uint) {return data;}
    function compute(uint a, uint b) internal pure returns (uint) {return a + b;}
}

contract External {
    function readData() public returns(uint) {
        // Inisialisasi contract parent dengan nama c
        Parent c = new Parent();
        // updateData dan getData dapat diakses karena bersifat public
        c.updateData(7);
        return c.getData();
    }
}

contract Child is Parent {
    uint private result;
    // Parent private c;

    // constructor() {
    //     c = new Parent();
    // }

    function getComputeResult() public {
        // compute bisa diakses karena contract ini merupakan contract turunan dari Parent
        result = compute(4, 5);
    }

    function getResult() public view returns(uint) {return result;}
    // info bisa diakses karena contract ini merupakan contract turunan dari Parent
    function getNewData() public view returns(uint) {return info;}
}