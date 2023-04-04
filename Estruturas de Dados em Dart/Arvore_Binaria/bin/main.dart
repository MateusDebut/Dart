import 'node.dart';
import 'tree.dart';

void main(){
  print("Arvore binária");
  Tree<int> arvore = Tree();

  arvore.add(6);
  arvore.add(2);
  arvore.add(4);
  arvore.add(1);
  arvore.add(9);
  arvore.add(0);
  arvore.add(12);
  arvore.add(8);

  arvore.printTree();
}