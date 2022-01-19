// SPDX-License-Identifies: MIT
pragma solidity >=0.4.0;
pragma experimental ABIEncoderV2;

contract comparar_strings{
    function Comparar(string memory _j, string memory _i) public pure returns(bool){
        bytes32 hash_j = keccak256(abi.encodePacked(_j));
        bytes32 hash_i = keccak256(abi.encodePacked(_i));

        return hash_i == hash_j;

    }
}