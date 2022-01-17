pragma solidity >=0.4.4;

contract Banco{

    struct cliente{
        string _nombre; 
        address _direccion;
        uint dinero; 
    }

    mapping (string => cliente) clientes; 

    function nuevoCliente(string memory _nombre) public {
        clientes[_nombre]=cliente(_nombre,msg.sender,0);
    } 

}

contract Cliente is Banco{
    function altaCliente(string memory _nombre) public{
        nuevoCliente(_nombre);
    }

    function ingresarDinero(string memory _nombre, uint cantidad) public{
        clientes[_nombre].dinero = clientes[_nombre].dinero + cantidad; 
    }
    function retirarDinero(string memory _nombre, uint cantidad) public{
        bool flag = false; 
        if(int(clientes[_nombre].dinero) - int(cantidad) >= 0){
           clientes[_nombre].dinero = clientes[_nombre].dinero - cantidad; 
            flag = true; 
        }
    }

    function verSaldo(string memory _nombre ) public view returns(uint){
       return clientes[_nombre].dinero;
    }
}