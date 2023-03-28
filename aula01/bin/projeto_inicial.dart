import "dart:io";

void main(List<String> arguments){
  double nota = 2;
  String palavra = "Mateus";
  String palavra2 = palavra;
  if(true){
    print(palavra == palavra2);
    palavra = "Miguel";
    print(palavra2);
  }

  for(int i = 0; i < 10; i++){
      for(int j = 0; j <= i; j++){
        stdout.write("*");
      }
      print("");
  }
}