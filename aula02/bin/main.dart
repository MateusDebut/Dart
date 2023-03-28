import 'dart:io';

import 'package:aula02/aula02.dart' as aula02;

void main(List<String> arguments) {
  print("Insira seu nome: ");

  String? nome = stdin.readLineSync();
  print(nome);

  print("Insira sua idade: ");
  String? input = stdin.readLineSync();
  if(input != null){
    int idade = int.parse(input);
    print(idade);
  }

}
