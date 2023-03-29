import 'package:aula06/aula06.dart' as aula06;

int? StringToInt(String palavra){
  try{
    int numero = int.parse(palavra);
  }on FormatException{
    print("Operação inválida");
  }
}

void main(List<String> arguments) {
  int? numero = StringToInt("a");

}
