class Node<T extends num>{
  T? _item;
  Node<T>? _esquerda;
  Node<T>? _direita;

  Node(T this._item);

  T? get item => _item;

  void set item(T? value){
    _item = value;
  }

  Node<T>? get esquerda => _esquerda;

  void set esquerda(Node<T>? value){
    _esquerda = value;
  }

  Node<T>? get direita => _direita;

  void set direita(Node<T>? value){
    _direita = value;
  }

}