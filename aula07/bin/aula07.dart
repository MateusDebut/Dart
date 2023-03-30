import 'package:aula07/aula07.dart' as aula07;

void main(List<String> arguments) {
  Future myFuture = Future(() {
    print("Indo de volta para o futuro");
    return 21;
  }).then((value) => print("O valor é $value"));
  
  Future.delayed(Duration(seconds: 5));

  Future<int> myFutureFunc() async {
    await Future.delayed(Duration(seconds: 4));
    throw Exception();
    return 12;
  }

  /*myFutureFunc()
      .then((value) => print("O valor retornado assincronamente é: $value"))
      .onError((error, stackTrace) => print("Um erro aconteceu..."))
      .whenComplete(() => print("O future terminou"));*/

  Future<int> myFutureErorFunc(int a, int b) async {
    try{
      if(a > b){
        throw Exception();
      }
      print("Esta é uma função assincrona");
      await Future.delayed(Duration(seconds: 3));
      return 42;
    }catch(ex){
      print("Ocorreu um erro $ex");
      return 42;
    }finally{
      print("O futuro foi finalmente encerrado");
    }
  }

  myFutureErorFunc(2, 1).then((value) => print("O valor é: $value"));
  print("A main terminou");
}
