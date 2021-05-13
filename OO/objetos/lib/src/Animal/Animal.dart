class Animal {
  String nome;
  String som;
  String tipo;

  Animal({this.som, this.tipo, this.nome});

  void emitirSom() {
    print('O $nome é um $tipo, e faz: $som');
  }
}
