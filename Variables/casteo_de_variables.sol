pragma solidity >=0.4.4;


contract casteo{

    //Ejemplo de casteo de variables 

    uint8 entero_8_bits = 42; 
    uint64 entero_64_bits = 60000; 
    uint entero_256_bits = 1000000; 

    //casteo
    uint64 public casteo_1 = uint64(entero_8_bits); 
    uint public casteo_2 = uint(entero_64_bits); 



}
