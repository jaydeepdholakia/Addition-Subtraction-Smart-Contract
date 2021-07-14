// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.8.4;

contract HelloWorld {
    
    uint num1;
    uint num2;
    
    function setValues(uint _num1, uint _num2) external {
        (num1, num2) = (_num1, _num2);
    }
    
    function getValues() external view returns(uint, uint) {
        return (num1, num2);
    }
    
    modifier checkIfNull {
        require(num1 != 0 && num2 != 0, "Please assign value first");
        _;
    }
    
    function add() external view checkIfNull returns(uint) {
        return (num1 + num2);
    }
    
    function sub() external view checkIfNull returns(int) {
        return (int(num1) - int(num2));
    }
    
}