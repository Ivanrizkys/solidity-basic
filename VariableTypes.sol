// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Variables {
    // state variable (global variable
    // default is private
    // can only use in this contract (Variables)
    uint total;

    function sum(uint a, uint b) public {
        // local variable scope
        uint temp = a + b;
        total = temp;
    }

    function get() public view returns (uint) {
        return total;
    }
}

contract Types {
    bool test = false;
    int32 public negative = -12;
    uint public err;

    // this function will error if the result of reduction is negative value
    // this problem cause err varialbe is type uint
    // uint type can only store positive value
    function reduction(uint a, uint b) public {
        err = a - b;
    }

    bytes1 public letter = "A";
    string public sentence = "Aku dan kamu jadi satu, ahay";
}

contract Enums {
    // enum type start with o
    // Programer = 0
    // Analys = 1
    // Doctor = 2
    enum Jobs {Programer, Analiys, Doctor}

    function getEnum() public pure returns (Jobs) {
        return Jobs.Doctor;
    }

    function getAnotherEnum() public pure returns (Jobs) {
        return Jobs.Programer;
    }
}

contract EnumExample {
    enum Status { Pending, Approved, Rejected }

    Status public currentStatus;

    function setStatus(Status _status) public {
        currentStatus = _status;
    }
    
    function getStatus() public view returns (Status) {
        return currentStatus;
    }
}