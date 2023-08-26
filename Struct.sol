// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Struct adalah sebuah koleksi sebuah tipe data yang dijadikan menjadi satu
// Struct merupakan tipe data reference

contract Struct {
    struct Book {
        uint id;
        string title;
        string author;
        bool isAvailable;
    }

    Book book1;
    Book[] book2;

    function getBook1() public returns (Book memory) {
        book1 = Book(1, "Learn Solidity", "Ivanrizkys", true);
        return book1;
    }
    
    function addBook2(uint id, string memory title, string memory author, bool isAvailable) public {
        book2.push(Book(id, title, author, isAvailable));
    }

    function getBook2() public view returns (Book[] memory) {
        return book2;
    }
}