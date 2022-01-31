import 'dart:io';

const clearTerminal = '\x1B[2J\x1B[0;0H'; //Limpa terminal [equivalente ao cls];

List<Map<String, dynamic>> pessoas = [];
void cadastraPessoa() {
  dynamic text;

  print(clearTerminal);
  do {
    print('*** DIGITE UM COMANDO ****');
    text = stdin.readLineSync();

    if (text.toLowerCase() == 'sair') {
      print('*** PROGRAMA FINALIZADO ****');
    } else if (text.toLowerCase() == 'cadastro') {
      print(clearTerminal);
      _cadastraPessoa();
      print(clearTerminal);
    } else if (text.toLowerCase() == 'imprime') {
      _imprimePessoa();
    } else {
      print(
          '## COMANDO NÃO EXISTE ### \nLista de comandos:\ncadastro\nimprime\nsair');
    }
  } while (text.toLowerCase() != 'sair');
}

void _cadastraPessoa() {
  var pessoa = <String, dynamic>{};

  //Criando Key(s) dinamicamente em tempo de execução.
  print('*** Digite seu nome: ');
  pessoa['nome'] = stdin.readLineSync();

  print('*** Digite sua idade: ');
  pessoa['idade'] = stdin.readLineSync();

  print('*** Digite sua cidade: ');
  pessoa['cidade'] = stdin.readLineSync();

  print('*** Digite seu estado: ');
  pessoa['estado'] = stdin.readLineSync();

  pessoas.add(pessoa);
}

void _imprimePessoa() {
  pessoas.forEach((pessoa) {
    print(pessoa);
  });
}
