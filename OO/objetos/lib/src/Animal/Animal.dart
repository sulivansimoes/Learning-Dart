class Animal {
  String nome;
  String som;
  String tipo;

  Animal({ required this.som, required this.tipo, required this.nome});

  void emitirSom() {
    print('O $nome é um $tipo, e faz: $som');
  }
}
