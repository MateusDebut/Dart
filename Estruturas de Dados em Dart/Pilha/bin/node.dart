class Node<T>{
  late T _item;
  Node<T>? _anterior;

  Node(this._item);

  T get item => _item;

  set item(T value) {
    _item = value;
  }

  Node<T>? get anterior => _anterior;

  set anterior(Node<T>? value){
    _anterior = value;
  }
}