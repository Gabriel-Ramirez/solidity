pragma solidity >=0.4.4;
pragma abicoder v2;

contract retornos{

    function return_simple() public pure returns(string memory){
        return "Saludo"; 
    }
    
    function return_multiple() public view returns(string memory, uint, address){
        return ("Hola mundo", 77, msg.sender); 
    }

    function mostrarValores() public view{
        string memory saludo;
        uint numero;
        address direccion; 
        (saludo,numero,direccion) = return_multiple();
    }
}