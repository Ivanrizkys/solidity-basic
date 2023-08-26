// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract FunctionType {
    uint number = 10;

    // keyword "view" digunakan akan memberitahu sebuah function hanya mengakses suat data disebuah contract
    // fungsi tersebut juga tidak diperbolehkan untuk me mutasi sebuah data yang ada
    // data yang dimaksud adalah state yang disini bernama number
    function getNumber() public view returns (uint) {
        return number;
    }

    // keyword "pure" digunakan untuk memberi tahu sebuah function bahwa dia tidak boleh mengakses data dalam sebuah state
    // dia juga tidak diperbolehkan mengubah data yang ada di dalam sebuah state
    function getString() public pure returns (string memory) {
        return "Hai sayang apa kabar";
    }

    // overload
    // dalam solidity juga memungkinkan untuk membuat function dengan nama sama (namum parameternya harus berbeda)
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function add(uint a, uint b, uint c) public pure returns (uint) {
        return a + b + c;
    }
}

contract PayableFunction {
    uint recievedAmount;

    // keyword "payable" digunakan agar memberitahu bahwa sebuah contract dapat menerima sebuah etherium
    // etherium yang dikirimkan oleh pengguna dapat diakses dengan menggunakan perintah msg.value
    function recievedEther() payable public {
        recievedAmount = msg.value;
    }
    function getTotalAmount() public view returns (uint) {
        console.log(recievedAmount);
        return recievedAmount;
    }
}