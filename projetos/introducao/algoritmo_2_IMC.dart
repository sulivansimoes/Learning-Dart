import 'dart:io';

void main() {
  dynamic peso;
  dynamic altura;
  num imc;

  print("### CALCULO IMC ###");
  print("Informe seu peso? ");
  peso = stdin.readLineSync();
  print("Informe sua altura? ");
  altura = stdin.readLineSync();

  if (!peso.toString().contains(new RegExp(r'[0-9]'))) {
    print("Não foi digitado um número no peso");
    return;
  }

  if (!altura.toString().toString().contains(new RegExp(r'[0-9]'))) {
    print("Não foi digitado um número na altura");
    return;
  }

  altura = double.parse(altura);
  peso = double.parse(peso);
  imc = peso / (altura * altura);

  if (imc <= 18.5) {
    print("Você está abaixo do peso. IMC: $imc");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Você está com peso normal. IMC: $imc");
  } else if (imc > 25 && imc < 29.9) {
    print("Você está acima do peso. IMC: $imc");
  } else if (imc > 30 && imc < 34.9) {
    print("Você está com obesidade grau 1. IMC: $imc");
  } else if (imc > 35 && imc < 39.9) {
    print("Você está com obesidade grau 2. IMC: $imc");
  } else {
    print("Você está com obesidade grau 3. IMC: $imc");
  }
}
