//versiones
pragma solidity >=0.4.4;

contract tiempo{

    //unidades de tiempo se manejan en segundos ya sean dias horas etc

    //las unidades de tiempo se guardan en variables enteras
    uint tiempo_actual = block.timestamp; 
    uint un_minuto = 1 minutes; 
    uint dos_horas = 2 hours;


    //suma1 50 segundos 
    function sumar50Seconds() public view returns(uint){
        return block.timestamp + 50 seconds; 
    }

    //sumar 1 dia
    function sumarDia() public view returns(uint){
        return block.timestamp + 1 days; 
    }

    //tiempo actual 
    function tiempoActual() public view returns(uint){
        return block.timestamp; 
    }
}