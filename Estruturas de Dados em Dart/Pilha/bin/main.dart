import 'pilha.dart';

void main(){
  Pilha<String> nomes = Pilha();
  nomes.adicionar("Monica");
  nomes.adicionar("Miguel");
  nomes.adicionar("Mateus");
  nomes.adicionar("Rose");

  print(nomes);

  nomes.remover();
  nomes.remover();

  print("---------------------");
  print(nomes);

}