pragma solidity >=0.4.4;

contract Modifier{

    address public owner; 

    constructor() public{
        owner = msg.sender; 
    }

    modifier soloPropietario(){
        require(msg.sender == owner, "No tiene permiso para ejecutar esta funcion");
        _;
    }

    function ejemplo1() public soloPropietario(){
        //Esta funcion solo puede ser ejecutada por el propitario. 
    }
}