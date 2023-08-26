// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Mapping mirip dengan struktuk data json atau object pada javascript
// Maaping berisi key dan value
// Key dalam mapping haruslah unik
// Jika kita me set dengan key yang belum ada di mapping maka dia akan menambahkan key baru
// Jika kita me set dengan key yang sudah ada dia menimpa key yang sudah ada

contract Mapping {
    mapping(address => uint) public map;

    function setMap(address _addr, uint val) public {
        map[_addr] = val;
    }
    function getMap(address _addr) public view returns (uint) {
        return map[_addr];
    }
}


// Mapping juga bisa kita buat bersarang
contract NestedMapping {
    mapping(string => mapping(address => bool)) public map;

    function setMap(string memory _type, address _addr, bool isGood) public {
        map[_type][_addr] = isGood;
    }
    function getMap(string memory _type, address _addr) public view returns (bool) {
        return map[_type][_addr];
    }
}