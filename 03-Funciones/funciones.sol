pragma solidity >=0.4.4;
pragma abicoder v2;

contract funciones{
    address[] public direcciones; 

    function nuevaDireccion() public {
        direcciones.push(msg.sender); 
    }
    bytes32 hash; 
    function calcularHash(string memory _datos) public{
        hash = keccak256(abi.encodePacked(_datos));
    }

    struct Persona{
        string nombre; 
        uint edad; 
        address direccion; 
        bytes32 hashId; 
    }

    function calcularHashPersona(string memory _nombre, uint _edad) private view returns(bytes32){
        return keccak256(abi.encodePacked(_nombre, _edad, msg.sender));
    }
    
    Persona [] public personas; 

    function agregaPersona(string memory _nombre, uint _edad) public{
        personas.push(Persona(_nombre, _edad, msg.sender, calcularHashPersona(_nombre, _edad))); 
    }

}