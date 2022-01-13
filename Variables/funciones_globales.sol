pragma solidity >=0.4.4; 

contract funciones_globales{

    //Function msg.sender 
    function MsgSender() public view returns(address){
        return msg.sender;
    }

    function Now() public view returns(uint){
        return block.timestamp;
    }

    //devuelve la direccion del minero del bloque actual 
    function BlockCoinbase() public view returns(address){
        return block.coinbase;
    }

    //devuelve la dificultad del bloque actual
    function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }
       
    function BlockNumber() public view returns(uint){
        return block.number;
    }

    function MsgSig() public view returns(bytes4){
        return msg.sig;
    }

    function txGasPrice() public view returns(uint){
        return tx.gasprice;
    }

}

