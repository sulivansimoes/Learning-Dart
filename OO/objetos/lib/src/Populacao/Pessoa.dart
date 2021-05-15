class Pessoa {
  static const int _maiorIdade = 18;

  int _id;

  int idade;
  String nome;
  String sexo;
  double altura;
  double peso;

  //Construtures com  parametros nomeados.
  //Esse tipo de parametro faz a passagem de valor ser opcional
  Pessoa(
      {this.nome,
      this.idade,
      this.sexo = 'Não especificado',
      this.altura = 0,
      this.peso = 0}) {
    _id = DateTime.now().millisecondsSinceEpoch;
  }

  double calculaImc() {
    return peso / (altura * altura);
  }

  bool isMaiorIdade() {
    return idade >= _maiorIdade;
  }

  @override
  String toString() {
    var pessoa = <String, dynamic>{};

    pessoa['_id'] = _id;
    pessoa['nome'] = nome.padRight(10);
    pessoa['idade'] = idade;
    pessoa['sexo'] = sexo.padRight(9);
    pessoa['imc'] = calculaImc();
    pessoa['maior de idade'] = isMaiorIdade();

    print(pessoa);

    return pessoa.toString();
  }
}
