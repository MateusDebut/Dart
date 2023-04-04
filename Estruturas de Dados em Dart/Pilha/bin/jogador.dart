class Jogador{
  String? nome;
  int? id;

  void convidarOutroPlayer(Jogador convidado){
    print("Olá, ${convidado.nome}, quer jogar comigo?");
    String? resposta = stdin.readLineSync();
    if(resposta == "sim"){
      print("Player ${convidado.nome} aceitou o convite!");
    }else{
      print("Player ${convidado.nome} recusou o convite!");
    }
  }
}