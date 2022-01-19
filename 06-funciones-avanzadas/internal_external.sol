// SPDX-License-Identifies: MIT
pragma solidity >=0.4.4;

contract Plato{

    struct plato{
        string nombre;
        string ingredientes;
        uint precio;
    }

    plato[] platos; 

    mapping(string => string ) ingredientes; 

    function nuevoPlato(string memory _nombre, string memory _ingredientes, uint _precio) internal{
        platos.push(plato(_nombre, _ingredientes, _precio));
        ingredientes[_nombre] = _ingredientes;
    }

    function mostrarIngredientes(string memory _nombre) public view returns(string memory){
        return ingredientes[_nombre];
    }
}

contract Comidas is Plato{

    function sandwich(string memory _ingredientes, uint _precio) external{
        nuevoPlato("sandwitch", _ingredientes, _precio);
    }
    
}