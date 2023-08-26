// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Array termasuk tipe data reference
// Index array dimulai dari 0
// ketika ingin membuat array di suatu function datanya disimpan di memory (bukan storage), maka harus dituliskan secara explicit

contract FixedArray {
    // Fixed array berarti panjang array sudah di definisikan ketika inisialisasi variable

    // contoh array ketika digunakan sebagai state data (storage)
    uint[4] data = [uint(5), 6];

    function getArray() public pure returns (uint[3] memory) {
        uint[3] memory temp = [uint(1), 2, 3];
        return temp;
    }

    // contoh penulisan lainya
    function getAnotherArray() public pure returns (uint[3] memory temp) {
        temp = [uint(1), 2, 3];
        return temp;
    }

    // akses ke spesific indek di array
    function accesIndex() public pure returns (uint) {
        uint[3] memory temp = [uint(1), 2, 3];
        return temp[0];
    }

    // mengetahui panjang array
    // pada fixed array, panjang yang dihitung adalah panjang maksimal dari array
    // jadi walaupun array tersebut berisi angka (1, 2) namun panjangnya 4
    // maka fungsi length akan me return value 4 sesuai panjang maksimal array
    function getLength() public view returns (uint) {
        return data.length;
    }
}

contract DynamicArray {
    // Dynamic array berarti panjang array bisa dinamis (tidak terbatas)
    // Tidak perlu melakukan inisialisasi panjang array pada saat inisialisasi variabel
    uint[] data;

    function getArray() public returns (uint[] memory) {
        data = [uint(9), 3, 4, 3, 0, 2];
        return data;
    }

    // mengetahui panjang array
    function getLength() public view returns (uint) {
        return data.length;
    }

    // di solidity juga mengadopsi push dan pop array
    function pushArray() public returns (uint[] memory) {
        data.push(10);
        data.push(50);
        return data;
    }
    function popArray() public returns (uint[] memory) {
        data.pop();
        return data;
    }
}