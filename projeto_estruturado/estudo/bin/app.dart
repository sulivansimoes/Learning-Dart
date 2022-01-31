
import '../lib/src/algoritmo_2_IMC_Refatorado.dart';
import '../lib/src/carrinho_compras_refatorado.dart';
import '../lib/src/maps3.dart';

void main(List<String> arguments) {
  if (arguments[0] == 'calculo-imc') {
    calculoIMC();
  } else if (arguments[0] == 'carrinho-compras') {
    carrinhoDeCompras();
  } else if (arguments[0] == 'cadastro-pessoas') {
    cadastraPessoa();
  } else {
    print('-- ESSE PROGRAMA NÃO EXISTE --');
    print(arguments);
  }
}
