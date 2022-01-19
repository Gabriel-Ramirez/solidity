// SPDX-License-Identifies: MIT
pragma solidity >=0.4.4;

contract Mappings{
    mapping (string => uint) personaTelefono; 

    function asignar(string memory _nombre, uint numero) public{
        personaTelefono[_nombre] = numero;
    }

    function consultar(string memory _nombre) public view returns(uint){
        return personaTelefono[_nombre];
    }
}