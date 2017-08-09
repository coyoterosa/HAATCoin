pragma solidity ^0.4.11;

contract School {


    struct Student{
        string name;
        address id;
        uint gpa;

    }

    mapping(address => Student) students;

    //hashes the address
    mapping(bytes32 => address) studentDatabase;

    //sets a name to an address
    function setAddress(string a, address b){
        studentDatabase[sha3(a)] = b;
    }

    //returns said address
    function getAddress(string a) public constant returns(address){
        return studentDatabase[sha3(a)];
    }

    function setGpa(address a, uint x) {
        students[a].gpa = x;
    }

    function getGpa(address a) public constant returns (uint){
        return students[a].gpa;
    }


    //stores gpa
    uint[] arrstudentGpa;
    //stores address
    address[] arrstudentAddresses;
}
