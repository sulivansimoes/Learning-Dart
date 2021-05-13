// https://www.devmedia.com.br/sintaxe-dart-tipos-nao-tao-primitivos/40368

void main() {
  bool logico = true;
  int inteiro = 3;
  double flutuante = 3.14;
  num numero_mutavel;
  String nome = " Súlivan  ";

  String texto_grande = '''
    textos grandes 
    com mais de uma linha
   ''';

  final String variavel_com_valor_final = "final";
  dynamic tipo_dinamico;

  print(texto_grande);

  tipo_dinamico = "texto";
  print("tipo dinamico conteudo-> ${tipo_dinamico}");
  tipo_dinamico = 22;
  print("tipo dinamico conteudo-> ${tipo_dinamico}");

  print("varivel final -> ${variavel_com_valor_final}");
  print(" logico ${logico}");
  print("nome -> ${nome}");

  print("inteiro   -> ${inteiro}   ");
  print("flutuante -> ${flutuante} ");

  // num aceita tanto double quanto int
  numero_mutavel = 2;
  print("numero_mutavel -> ${numero_mutavel}");
  numero_mutavel = 2.021;
  print("numero_mutavel -> ${numero_mutavel}");

  //Usando alguns métodos dos tipos
  print(" arredondado -> ${flutuante.floor()}");
  print(" comparando -> ${flutuante.compareTo(2)}");
  print(" resto de divisão -> ${flutuante.remainder(2)}");

  print(" nome.trim()         -> ${nome.trim()}");
  print(" nome.toUpperCase()  -> ${nome.toUpperCase()}");
  print(" nome.toLowerCase()  -> ${nome.toLowerCase()..trim()}");
  print(" Interpolação de string usando nome $nome");
  nome += "Simões";
  print(" Imprimindo string concatenada -> $nome");

  print(
      "Comparando strings com método compareTo -> ${nome.compareTo('outra')}");

  print("Comparando strings com operador == -> ${nome == 'outra string'}");
}
