class Aluno{
  static int _quantidadeAlunos = 0;
  late int _id;
  late String _nome;

  Aluno(String nome){
    _nome = nome;
    _id = _quantidadeAlunos + 1;
    _quantidadeAlunos++;
    _informaIdAluno();
  }

  _informaIdAluno(){
    print(_quantidadeAlunos);
  }

}