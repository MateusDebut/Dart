import 'node.dart';

class Pilha<T>{
  Node<T>? _topo;
  int numeroElementos = 0;

  adicionar(T item){
    Node<T> node = Node(item);

    if(numeroElementos == 0){
      node.anterior = null;
    }else{
      node.anterior = _topo;
    }

    _topo = node;
    numeroElementos++;
  }

  remover(){
    if(_topo == null){
      return;
    }
    _topo = _topo?.anterior;
    numeroElementos--;
  }

  @override
  String toString() {
    String pilha = "";
    Node<T>? aux = _topo;
    while(aux != null){
      pilha = pilha + "[${aux.item}]\n";
      aux = aux.anterior;
    }
    return pilha;
  }
}