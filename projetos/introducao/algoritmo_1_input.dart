import 'dart:io';

const int maiorIdade = 18;
void main() {
  dynamic idade;

  do {
    print("Qual sua idade? ");
    idade = stdin.readLineSync();
  } while (!idade.toString().contains(RegExp(r'[0-9]')));

  idade = int.parse(idade);
  if (idade >= maiorIdade) {
    print("${idade} anos é maior de idade");
  } else {
    print("${idade} anos é menor de idade");
  }
}
