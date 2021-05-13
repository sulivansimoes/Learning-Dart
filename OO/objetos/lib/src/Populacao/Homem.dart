import 'Pessoa.dart';

class Homem extends Pessoa {
  Homem({String nome, int idade}) {
    super.nome = nome;
    super.idade = idade;
    super.sexo = 'Masculino';
  }
}
