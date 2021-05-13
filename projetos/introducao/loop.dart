import 'dart:io';

void main() {
  exemplo1();
  exemplo2();
}

void exemplo1() {
  bool isTrue = true;
  int count2 = 0;
  int count3 = 0;

  print("Exemplo 1\n");
  for (int count = 0; count <= 10; count++) {
    print("[for] Estou dizendo olá pela ${count + 1} vez.");
  }

  while (isTrue) {
    if (count2 >= 9) {
      isTrue = false;
    }
    print("[while] Estou dizendo olá pela ${count2 + 1} vez.");
    count2++;
  }

  do {
    print("[Do While] Estou dizendo olá pela ${count3 + 1} vez.");
    count3++;
  } while (count3 <= 9);
}

void exemplo2() {
  bool isNaoSair = true;
  String texto = "";

  while (isNaoSair) {
    print(" \n\n Exemplo 2\n *** Digite um texto. Para sair digite: sair ***");
    texto = stdin.readLineSync();

    if (texto.toLowerCase() == "sair") {
      isNaoSair = false;
    } else {
      print("Você digitou: $texto");
    }
  }
}
