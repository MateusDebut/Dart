class Node<T>{
  late T _item;
  Node<T>? _anterior;
  Node<T>? _proximo;

  Node(this._item);

  Node<T>? get proximo => _proximo;

  set proximo(Node<T>? value) {
    _proximo = value;
  }

  Node<T>? get anterior => _anterior;

  set anterior(Node<T>? value) {
    _anterior = value;
  }

  T get item => _item;

  set item(T value) {
    _item = value;
  }
}