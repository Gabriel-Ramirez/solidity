pragma solidity >=0.4.4;

contract Eventos{

    event nombre_evento1 (string _nombrePersona); 
    event nombre_evento2 (string _nombrePersona, uint _edadPersona);
    
    function EmitirEvento1(string memory _nombrePersona) public {
        emit nombre_evento1(_nombrePersona); 
    }

    function EmitirEvento2(string memory _nombrePersona, uint _edadPersona) public{
        emit nombre_evento2(_nombrePersona, _edadPersona);
    }
}