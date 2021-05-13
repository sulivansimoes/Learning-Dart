import 'dart:io';

void main() {
  bool isContinua = true;
  List<String> nomes = <String>[];
  String text;

  while (isContinua) {
    print(" *** Digite um nome. Para sair digite: SAIR");
    text = stdin.readLineSync();
    if (text.toLowerCase() == "sair") {
      print(" *** Programa finalizado ***");
      isContinua = false;
    } else {
      nomes.add(text);
    }
  }

  print(" $nomes \n");

  nomes.remove("sulivan");
  nomes.removeAt(nomes.indexOf("charlene"));

  print(" $nomes \n");
}
