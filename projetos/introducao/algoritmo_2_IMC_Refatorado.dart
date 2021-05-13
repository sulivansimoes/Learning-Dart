import 'dart:io';

const naoCalculado = -1;
void main() {
  dynamic peso;
  dynamic altura;
  num imc;

  print("### CALCULO IMC ###");
  print("Informe seu peso? ");
  peso = stdin.readLineSync();
  print("Informe sua altura? ");
  altura = stdin.readLineSync();

  imc = calculoDeImc(altura, peso);

  imprimeResultado(imc);
}

/// Calcula o ínice de massa corporal de um índividuo
/// baseado em sua [altura] e seu [peso]
num calculoDeImc(altura, peso) {
  if (!peso.toString().contains(new RegExp(r'[0-9]'))) {
    print("Não foi digitado um número no peso");
    return naoCalculado;
  }

  if (!altura.toString().contains(new RegExp(r'[0-9]'))) {
    print("Não foi digitado um número na altura");
    return naoCalculado;
  }

  altura = double.parse(altura);
  peso = double.parse(peso);
  return peso / (altura * altura);
}

// Exibe qual a situação do índividuo em relação
// ao seu peso de acordo com o IMC calculado.
void imprimeResultado(num imc) {
  if (imc == naoCalculado) {
    print("IMC não foi calculado.");
  } else if (imc <= 18.5) {
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
