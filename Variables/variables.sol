pragma solidity >=0.4.4;

contract variables{

    //Variables enteras sin signa
    uint variable_sin_signo; 
    uint8 variable_8_bits; 

    //Variables enteras con signo
    int variable_con_signo; 
    int8 variable_con_signo_8_bits; 

    //string 
    string variable_string; 

    //bolean
    bool variable_bolean; 

    //bytes 1-32  bytes<x> <nombre_variable>
    bytes32 variable_byte;
    bytes4 variable_4_bytes; 

    //address
    address variable_adress;

    //enum, cada valor de enum tiene un indice que comienza en 0
    enum estado {ON, OFF}

    estado state; 

    // Se recibe el indice como parametro 
    function cambiarEstado(uint _k) public {
        state = estado(_k); 
    }

    function Estado() public view returns(estado){
        return state; 
    }

}