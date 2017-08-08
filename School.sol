pragma solidity ^0.4.11;

 contract owned {
    address public owner;

    function owned() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        if (msg.sender != owner) throw;
        _;
    }

    function transferOwnership(address newOwner) onlyOwner {
        owner = newOwner;
    }
}


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

    contract SchoolToken is School, owned {


    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;

    /* Initializes contract with initial supply tokens to the creator of the
    contract */
    function SchoolToken (uint256 initialSupply) {
       // Give the creator all initial tokens
          balanceOf[msg.sender] = initialSupply;
    }

    function mintToken(address target, uint256 mintedAmount) onlyOwner {
        balanceOf[msg.sender] += mintedAmount;

    }

    /* Send coins */
    function transferTokens(address _to, uint256 _value) {
        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
        balanceOf[_to] += _value;                            // Add the same to the recipient
    }
}
