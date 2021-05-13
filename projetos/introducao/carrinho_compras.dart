import 'dart:io';

const clearTerminal = "\x1B[2J\x1B[0;0H"; //Limpa terminal [equivalente ao cls]

void main() {
  int item;
  List<String> produtos = <String>[];
  String text;

  do {
    print("*** Adicione um produto. Para sair digite: 'sair' ***");
    text = stdin.readLineSync();

    if (text.toLowerCase() == 'sair') {
      print('*** Programa finalizado ***');
    } else if (text.toLowerCase() == 'imprimir') {
      print(" *** Lista *** ");
      for (String produto in produtos) {
        print('Item: ${produtos.indexOf(produto) + 1} -  $produto');
      }
    } else if (text.toLowerCase() == 'remover') {
      print("*** Qual item deseja remover? ***");
      for (String produto in produtos) {
        print('Item: ${produtos.indexOf(produto) + 1} -  $produto');
      }
      item = int.parse(stdin.readLineSync());
      produtos.removeAt(item);
      print('Item removido!!');
    } else {
      produtos.add(text);
      print(clearTerminal);
    }
  } while (text.toLowerCase() != 'sair');
}
