class Pessoa {
  static const int _maiorIdade = 18;

  late int _id;

  int idade;
  String nome;
  String sexo;
  double altura;
  double peso;

  //Construtures com  parametros nomeados.
  //Esse tipo de parametro faz a passagem de valor ser opcional
  Pessoa(
      {required this.nome,
       required this.idade,
      this.sexo = 'Não especificado',
      this.altura = 0,
      this.peso = 0}) {
    _id = DateTime.now().millisecondsSinceEpoch;
  }

  double calculaImc() => peso / (altura * altura);

  bool isMaiorIdade() => idade >= _maiorIdade;

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
