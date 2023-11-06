import 'dart:io';

void main() {
  var filePath = 'files/arquivo.txt';

  File file = File(filePath);
  IOSink? sink;

  try {
    sink = file.openWrite(mode: FileMode.append);

    sink.write('Elywood\n');

    List<String> lines = file.readAsLinesSync();

    for (String line in lines) {
      print(line);
    }

    print("-------------------------------");

    String conteudoArquivo = file.readAsStringSync();
    print(conteudoArquivo);

  } catch (e) {
    print('Erro ao abrir o arquivo: $e');
  } finally {
    sink?.close();
  }
}
