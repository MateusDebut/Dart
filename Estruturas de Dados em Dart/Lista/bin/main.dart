import 'package:aula05/aula05.dart' as aula05;

import 'lista.dart';

void main(List<String> arguments) {
  Lista<String> nomes = Lista();
  nomes.adicionar("Mateus");
  nomes.adicionar("Miguel");
  nomes.adicionar("Rose");
  nomes.adicionar("Monica");
  nomes.adicionar("Doda");
  nomes.excluir(2);
  nomes.imprimeLista();
}
