// https://dart.dev/guides/language/effective-dart/usage#avoid-using-iterableforeach-with-a-function-literal

main() {
  //New é obsoleto no DART, evitar o uso.
  Pessoa pessoa = Pessoa("Súlivan", 23);
  List<Pessoa> pessoas = <Pessoa>[];

  pessoas.add(Pessoa('João', 34));
  pessoas.add(Pessoa('Celia', 37));
  pessoas.add(Pessoa('Valter', 39));

  print(pessoa.nome);
  print(pessoa.idade);

  //forEach é recomendado somente se for preciso invocar
  //uma função LITERAL presente em cada elemento
  //Em outros cenários usar o for convencional
  pessoas.forEach((element) => {print("${element.nome} - ${element.idade}")});

  for (Pessoa individuo in pessoas) {
    individuo.nome += " Silva";
    individuo.imprime();
  }
}

class Pessoa {
  String nome;
  int idade;

  // * Não usar construtor vazio com chaves {}
  // * Esse construtor está usando o 'uso formal de inicalização' com o this
  Pessoa(this.nome, this.idade);

  imprime() {
    //Dar preferencia por interpolação ao invés de concatenação
    print("Nome: ${nome.padRight(15)} - idade: $idade");
  }
}
