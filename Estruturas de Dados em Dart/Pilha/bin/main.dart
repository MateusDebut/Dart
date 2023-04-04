import 'dart:io';

import 'jogador.dart';
import 'pilha.dart';


class JogadorPremium extends Jogador{
  void acessarRecursosPremium(){
    print("Acessando recursos premium");
  }
}

void main(){
  JogadorPremium jogador1 = JogadorPremium();
  Jogador jogador2 = Jogador();

  jogador1.nome = "Davi";
  jogador1.id = 1;

  jogador2.nome = "Mateus";
  jogador2.id = 2;

  jogador1.convidarOutroPlayer(jogador1);
  jogador1.acessarRecursosPremium();
}