// SPDX-License-Identifies: MIT
pragma solidity >=0.4.4;

contract Estructuras{

    struct cliente{
        uint id; 
        string nombres; 
        string apellidos;
        string email;
        string dui;  
    }

    struct producto{
        uint id; 
        string nombre; 
        uint precio; 
    }

    cliente cliente_1 = cliente(1,"nombre test", "Apellido test", "email@test.com","6546546-5");

    producto producto_1 = producto(1, "Producto test 1", 25);

}