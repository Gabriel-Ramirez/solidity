// SPDX-License-Identifies: MIT
pragma solidity >=0.4.4;

contract arreglos{

    //array de enteros de longitud 
    uint [5] public array_de_enteros = [1,2,3];

    //array de enteros dinamico 
    uint [] public array_de_enteros_dinamico; 

    //array de strigs 
    string [] public array_dinamico_de_string; 

    struct Persona{
        string nombres;
        string apellidos; 
    }

    //array dinamico de tipo persona 
    Persona [] public array_dinamico_de_personas; 

    function agregarValor(uint _valor) public {
        array_de_enteros_dinamico.push(_valor);
    }

    function agregaPersona(string memory _nombre, string memory _apellido) public{
        array_dinamico_de_personas.push(Persona(_nombre, _apellido)); 
    }
}