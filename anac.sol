//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

//coloca o contrato com o nome contrato
contract contrato {
    //declarando idade como publico para poder ser acessado como uint8 para ser mais leve e igualando a 18 (a idade padrao)
    uint8 public idade = 18;
    //armazenando o address do dono do contrato 
    address public dono;


    //fazendo o constructor para utilizar o método msg.sender que pega o endereço de quem esta enviando a mensagem
    constructor(){
        dono = msg.sender;
    }
    //função de setar idade que recebe um uint8 na variavel x que é publico e seta idade para o valor de x
    function setIdade(uint8 x) public {
        //setando a idade para x
        idade = x;
        //requisitando que seja enviado pelo dono do contrato
        require(msg.sender == dono);
        }
        //função de getar idade como publica para retornar o valor de idade
        function getIdade() public view returns (uint8) {
        //retornando idade
        return idade;
        }
}