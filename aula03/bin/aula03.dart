import 'package:aula03/aula03.dart' as aula03;

List<int> bubbleSort(List<int> lista){
  for(int i = 0; i < lista.length; i++){
    for(int j = 0; j < lista.length - 1; j++){
      if(lista[j] > lista[j+1]){
        int aux = lista[j];
        lista[j] = lista[j+1];
        lista[j+1] = aux;
      }
    }
  }
  return lista;
}

void main(List<String> arguments) {
  List<int> lista = [7,6,8,1,9,3,10,8,5,4];
  List<int> listaOrdenada = bubbleSort(lista);
  print(listaOrdenada);
}
