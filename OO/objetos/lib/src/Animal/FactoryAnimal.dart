import 'Animal.dart';
import 'Gato.dart';
import 'Grilo.dart';
import 'Especie.dart';
import 'Vaca.dart';

/// A fábrica de animais fornece a instância de uma espécie conforme
/// o [tipoAnimal] solicitado.
class FactoryAnimal {
  static Animal? getAnimal(tipoAnimal, {required String nome}) {
    switch (tipoAnimal) {
      case Especie.gato:
        return Gato(nome: nome);
      case Especie.grilo:
        return Grilo(nome: nome);
      case Especie.vaca:
        return Vaca(nome: nome);
      default:
        print('Tipo recebido  no FactoryAnimal não existe!!');
    }
    return null;
  }
}
