// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Address {
    uint balance;
    
    // smart contract dan account ether memiliki address
    // address disini bisa diibaratkan dengan nomer unik
    // ini juga bisa diibaratkan dengan nomor rekening

    // function ini digunakan untuk melakukan get address pada account yang tertaut pada smart contract (akun untuk deploy)
    address public coller;
    function getAddressColler() public returns (address) {
        coller = msg.sender;
        return coller;
    }
    // untuk lebih simplenya, bisa dilakukan dengan function dibawah ini
    function getAddressAccount() public view  returns (address) {
        return msg.sender;
    }

    // selain itu, kita juga bisa mengambil address dari smart contract nya
    function getAddressContract() public view returns (address) {
        address myAddress = address(this);
        return myAddress;
    }

    // send dan transfer
    // keyword send dan trasnfer dimiliki oleh variable yang memiliki type address payable
    // keyword ini digunakan untuk mengirim ether ke suatu account
    // keyword send akan me return boolean transaction yang menandakan gagal atau berhasilnya transaction (jika gagal tidak di revert atau error)
    // keyword trasnfer akan me return detail transaction (jika gagal akan error dan melakukan revert)
    function transferFund(address payable _address, uint nominal) public {
        _address.transfer(nominal);
    }

    function sendFund(address payable _address, uint nominal) public returns (bool) {
        return _address.send(nominal);
    }

    // function untuk menerima ether
    function recieveEther() payable public {
        balance = msg.value;
    }
}