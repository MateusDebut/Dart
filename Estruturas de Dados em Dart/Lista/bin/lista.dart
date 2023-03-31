import 'node.dart';

class Lista<T>{
  late Node<T> _inicio;
  int _tamanho = 0;

  adicionar(T item){
    Node<T> node = Node(item);
    if(_tamanho == 0) {
      node.anterior = null;
      _inicio = node;
      _inicio.proximo = null;
      _tamanho++;
      return;
    }
    Node<T>? aux = _inicio;
    while(aux?.proximo != null){
      aux = aux?.proximo;
    }
    aux?.proximo = node;
    node.anterior = aux;
    _tamanho++;
  }

  excluir(int indice){
    if(indice >= _tamanho){
      return;
    }
    Node<T>? aux = _inicio;
    for(int i = 0; i < indice; i++){
      aux = aux?.proximo;
    }

    if(aux?.anterior == null){
      aux = null;
      _tamanho--;
      return;
    }

    aux?.proximo?.anterior = aux.anterior;
    aux?.anterior?.proximo = aux.proximo;
    aux = null;
  }

  imprimeLista(){
    Node<T>? aux = _inicio;
    while(aux != null){
      print(aux.item);
      aux = aux.proximo;
    }
  }

}