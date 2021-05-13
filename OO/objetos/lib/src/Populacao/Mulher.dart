import 'Pessoa.dart';

class Mulher extends Pessoa {
  Mulher({String nome, int idade}) {
    super.nome = nome;
    super.idade = idade;
    super.sexo = 'Feminino';
  }
}
