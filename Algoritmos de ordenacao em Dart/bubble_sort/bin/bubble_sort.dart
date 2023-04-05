import 'package:bubble_sort/bubble_sort.dart' as bubble_sort;

List<num> bubbleSort(List<num> lista){
  for(int i = 0; i < lista.length; i++){
    for(int j = 0; j < lista.length -1; j++){
      if(lista[j] > lista[j+1]){
        num aux = lista[j];
        lista[j] = lista[j+1];
        lista[j+1] = aux;
      }
    }
  }
  return lista;
}

void main(List<String> arguments) {
  List<int> numeros = [1,4,2,8,4,3,10,0];
  numeros = bubbleSort(numeros).cast<int>();
  print(numeros);
}
