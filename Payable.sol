// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Payable digunakan untuk mendefinikan bahwa contract atau function yang kita buat dapat melakukan transaksi etherium
// transaksi disini contohnya transfer dan withdraw

contract Payable {
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}

    function getAmount() public view returns (uint) {
        uint amount = address(this).balance;
        return amount;
    }

    function withdraw() public {
        uint amount = address(this).balance;
        (bool success,) = owner.call{value: amount}("");
        require(success, "Withdraw ether failed");
    }

    function transfer(address payable _to, uint _amount) public {
        (bool success,) = _to.call{value: _amount}("");
        require(success, "Failed transfer ether");
    }
}