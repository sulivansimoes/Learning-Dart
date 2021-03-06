import 'dart:io';

import '../lib/src/Animal/Animal.dart';
import '../lib/src/Animal/Especie.dart';
import '../lib/src/Animal/FactoryAnimal.dart';

import '../lib/src/Populacao/Homem.dart';
import '../lib/src/Populacao/Mulher.dart';
import '../lib/src/Populacao/Pessoa.dart';

/// Trabalhando com herança básica e polimorfismo simples.
/// Exemplos para executar programas:
/// * ``` dart app.dart animal ```
/// * ``` dart app.dart pessoa ```
void main(List<String> arguments) {
  if (arguments[0] == 'pessoa') {
    programa_pessoa();
  } else if (arguments[0] == 'animal') {
    programa_animal();
  } else {
    print('argumento invalido.');
  }
}

void programa_pessoa() {
  var pessoas = <Pessoa>[];
  var pessoa = Pessoa(nome: 'Yoko', idade: 26);
  var mulher1 = Mulher(nome: 'Hinata', idade: 19);
  var mulher2 = Mulher(nome: 'Sakura', idade: 26);
  var homem1 = Homem(nome: 'Yamamoto', idade: 34);
  var homem2 = Homem(nome: 'Yoshiaki', idade: 34);
  var homem3 = Homem(nome: 'afonso',idade: 12);

  pessoas.add(pessoa);
  pessoas.add(mulher1);
  pessoas.add(homem1);
  pessoas.add(mulher2);
  pessoas.add(homem2);

  print('População japonesa atual');
  pessoas.forEach((individuo) {
    individuo.toString();
  });

  // Trabalhando com os métodos internos

  print('\n ## Cadastre-se ##');
  print(' -- Informe seu nome -- ');
  homem3.nome = stdin.readLineSync()!;
  print(' -- Informe sua idade -- ');
  homem3.idade = int.parse(stdin.readLineSync()!);
  print(' -- Informe seu peso -- ');
  homem3.peso = double.parse(stdin.readLineSync()!);
  print(' -- Informe sua altura -- ');
  homem3.altura = double.parse(stdin.readLineSync()!);
  print('--------- CADASTRO REALIZADO ---------');
  homem3.toString();
}

void programa_animal() {
  var animais = <Animal>[];
  var gato = FactoryAnimal.getAnimal(Especie.gato, nome: 'Lelo');
  var grilo = FactoryAnimal.getAnimal(Especie.grilo, nome: 'Cris');
  var vaca = FactoryAnimal.getAnimal(Especie.vaca, nome: 'Amorosa');

  animais.add(gato!);
  animais.add(grilo!);
  animais.add(vaca!);

  for (var animal in animais) {
    animal.emitirSom();
  }
}
