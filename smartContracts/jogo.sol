// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Jogo {

    struct regras {
        uint pedra;
        uint papel;
        uint tesoura;
    }

    mapping (address => string) public historico;

    regras public pedraPapelTesoura;

    function consultarRegras (bool) public {
        pedraPapelTesoura = regras ({
            pedra: 0,
            papel: 1,
            tesoura: 2
        });
    }


    

    event Partidas(address jogador1, address jogador2, uint jogadaJogador1, uint jogadaJogador2);

    function partida(address _jogador1, address _jogador2, uint _jogadaJogador1, uint _jogadaJogador2) public returns(bool) {
        if (_jogadaJogador1 == pedraPapelTesoura.pedra && _jogadaJogador2 == pedraPapelTesoura.pedra) {
            historico[_jogador1] = "empate";
            historico[_jogador2] = "empate";
            emit Partidas(_jogador1, _jogador2, _jogadaJogador1, _jogadaJogador2);
        }
        else if (_jogadaJogador1 == pedraPapelTesoura.pedra && _jogadaJogador2 == pedraPapelTesoura.papel){
             historico[_jogador1] = "derrota";
            historico[_jogador2] = "vitoria";
            emit Partidas(_jogador1, _jogador2, _jogadaJogador1, _jogadaJogador2);
        }
        else if (_jogadaJogador1 == pedraPapelTesoura.pedra && _jogadaJogador2 == pedraPapelTesoura.tesoura) {
             historico[_jogador1] = "vitoria";
            historico[_jogador2] = "derrota";
            emit Partidas(_jogador1, _jogador2, _jogadaJogador1, _jogadaJogador2);
        }
        else if (_jogadaJogador1 == pedraPapelTesoura.papel && _jogadaJogador2 == pedraPapelTesoura.pedra){
             historico[_jogador1] = "vitoria";
             historico[_jogador2] = "derrota";
            emit Partidas(_jogador1, _jogador2, _jogadaJogador1, _jogadaJogador2);
        }
         else if (_jogadaJogador1 == pedraPapelTesoura.papel && _jogadaJogador2 == pedraPapelTesoura.papel){
             historico[_jogador1] = "empate";
            historico[_jogador2] = "empate";
            emit Partidas(_jogador1, _jogador2, _jogadaJogador1, _jogadaJogador2);
        }
         else if (_jogadaJogador1 == pedraPapelTesoura.papel && _jogadaJogador2 == pedraPapelTesoura.tesoura){
             historico[_jogador1] = "derrota";
            historico[_jogador2] = "vitoria";
           emit Partidas(_jogador1, _jogador2, _jogadaJogador1, _jogadaJogador2);
        }
         else if (_jogadaJogador1 == pedraPapelTesoura.tesoura && _jogadaJogador2 == pedraPapelTesoura.papel){
             historico[_jogador1] = "vitoria";
            historico[_jogador2] = "derrota";
            emit Partidas(_jogador1, _jogador2, _jogadaJogador1, _jogadaJogador2);
        }
         else if (_jogadaJogador1 == pedraPapelTesoura.tesoura && _jogadaJogador2 == pedraPapelTesoura.pedra){
             historico[_jogador1] = "derrota";
            historico[_jogador2] = "vitoria";
            emit Partidas(_jogador1, _jogador2, _jogadaJogador1, _jogadaJogador2);
        }
         else if (_jogadaJogador1 == pedraPapelTesoura.tesoura && _jogadaJogador2 == pedraPapelTesoura.pedra){
             historico[_jogador1] = "derrota";
            historico[_jogador2] = "vitoria";
            emit Partidas(_jogador1, _jogador2, _jogadaJogador1, _jogadaJogador2);
        }

        
    }

    
}