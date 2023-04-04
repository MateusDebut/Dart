import 'node.dart';

class Tree<T extends num>{
  Node<T>? _head;

  Node<T>? get head => _head;

  set head(Node<T>? value) {
    _head = value;
  }

  void add(T item){
    if(_head == null){
      Node<T> node = Node(item);
      _head = node;
      return;
    }

    searchPosition(item, _head);
  }

  void searchPosition(T item, Node<T>? head){
    if(head != null){
      if(item > (head.item as num)){
        if(head.direita == null){
          Node<T> node = Node(item);
          head.direita = node;
          return;
        }
        searchPosition(item, head.direita);
      }else {
        if(head.esquerda == null){
          Node<T> node = Node(item);
          head.esquerda = node;
          return;
        }
        searchPosition(item, head.esquerda);
      }
    }
  }

  void printTree(){
    Node<T>? aux = _head;
    _print(head);
  }

  void _print(Node<T>? head){
    if(head == null){
      return;
    }

    print(head.item);

    if(head.esquerda != null){
      _print(head.esquerda);
    }

    if(head.direita != null){
      _print(head.direita);
    }
  }
}