//Bibliotecas
import 'dart:io';

//Constantes
const clearTerminal = "\x1B[2J\x1B[0;0H"; //Limpa terminal [equivalente ao cls]

//Globais
///Lista global contendo todos os produtos do carrinho
List<String> produtos = <String>[];

void main() {
  String text;

  do {
    print("*** Adicione um produto. Para sair digite: 'sair' ***");
    text = stdin.readLineSync();

    if (text.toLowerCase() == 'sair') {
      print('*** Programa finalizado ***');
    } else if (text.toLowerCase() == 'imprimir') {
      imprimeItensDoCarrinho();
    } else if (text.toLowerCase() == 'remover') {
      removeItemDoCarrinho();
    } else {
      produtos.add(text);
      print(clearTerminal);
    }
  } while (text.toLowerCase() != 'sair');
}

///
/// Realiza a impressão dos produtos presentes no carrinho via terminal
///
void imprimeItensDoCarrinho() {
  print("*** Lista de itens ***");
  for (String produto in produtos) {
    print('Item: ${produtos.indexOf(produto) + 1} -  $produto');
  }
}

///
/// Realiza a retirada de um produto do carrinho de acordo com a informação
/// fornecida pela usuário;
///
void removeItemDoCarrinho() {
  int item;

  print("*** Qual item deseja remover? ***");
  imprimeItensDoCarrinho();
  item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  print('Item removido!!');
}
