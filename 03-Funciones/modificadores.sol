pragma solidity >=0.4.4; 

contract view_pure_payable{

    string [] alumnos; 

    function agregaAlumno(string memory _nombre) public {
        alumnos.push(_nombre);
    }

    function verAlumno(uint _posicion) public view returns(string memory){
        return alumnos[_posicion];
    }

    uint numero=10;

    function sumar(uint _valor) public view returns(uint){
        return numero+_valor; 
    } 

    function potencia(uint _base, uint _exponente) public pure returns(uint){
        return _base**_exponente; 
    }

    //modificador payable 
    mapping (address => cartera) DineroCartera;

    struct cartera{
        string nombre; 
        address direccion;
        uint cantidad; 
    }

    function pagar(string memory _nombre, uint _cantidad) public payable{
        cartera memory mi_cartera; 
        mi_cartera = cartera(_nombre,msg.sender,_cantidad); 
        DineroCartera[msg.sender] = mi_cartera;
    }

    function verSaldo() public view returns(cartera memory){
        return DineroCartera[msg.sender]; 
    }

}