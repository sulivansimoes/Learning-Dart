import 'dart:io';

Map<String, dynamic> pessoa = {};

void main() {
  int idade;
  String cidade;
  String estado;
  String nome;

  print("*** Digite seu nome: ");
  nome = stdin.readLineSync();

  print("*** Digite sua idade: ");
  idade = int.parse(stdin.readLineSync());

  print("*** Digite sua cidade: ");
  cidade = stdin.readLineSync();

  print("*** Digite seu estado: ");
  estado = stdin.readLineSync();

  //Criando Key(s) dinamicamente em tempo de execução.
  pessoa["nome"] = nome;
  pessoa["idade"] = idade;
  pessoa["cidade"] = cidade;
  pessoa["estado"] = estado;

  print(pessoa);
}
