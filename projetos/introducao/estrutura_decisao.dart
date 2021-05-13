const int open = 0;
const int close = 1;

void main() {
  num numero = 7;
  dynamic aleatoria = 1;
  int opcao = close;

  if (numero % 2 == 0) {
    print(" ${numero} é par");
  } else {
    print(" ${numero} é impar");
  }

  if (aleatoria is String) {
    print("váriavel 'aleatoria' é do tipo String");
  } else if (aleatoria is int) {
    print("váriavel 'aleatória' é do tipo int");
  }

  switch (opcao) {
    case open:
      print("Opção open escolhida");
      break;
    case close:
      print("Opção close escolhida");
      break;
    default:
      print("Opção inválida");
      break;
  }
}
