class Pessoa {
  int _id;

  int idade;
  String nome;
  String sexo;

  //Construtures com  parametros nomeados.
  //Esse tipo de parametro faz a passagem de valor ser opcional
  Pessoa({this.nome, this.idade, this.sexo = 'Não especificado'}) {
    _id = DateTime.now().millisecondsSinceEpoch;
  }

  @override
  String toString() {
    var pessoa = <String, dynamic>{};

    pessoa['_id'] = _id;
    pessoa['nome'] = nome.padRight(10);
    pessoa['idade'] = idade;
    pessoa['sexo'] = sexo.padRight(9);

    print(pessoa);

    return pessoa.toString();
  }
}
