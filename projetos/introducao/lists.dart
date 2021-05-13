void main() {
  List<String> frutas = ["maçã", "banana", "morango"];

  //Adicionando no final da lista
  frutas.add("goiaba");

  //Adicionando em uma posição especifica
  frutas.insert(2, 'manga');

  print(frutas.contains('goiaba') ? "contém goiaba" : "não contém goiaba ");

  for (String fruta in frutas) {
    print(fruta);
  }

  frutas.removeAt(frutas.indexOf('banana'));

  frutas.forEach((fruta) {
    print("posicao: ${frutas.indexOf(fruta)}:  - fruta: $fruta");
  });

  print(frutas.isEmpty ? "lista vazia" : "lista cheia");
  frutas.clear();
  print(frutas.isEmpty ? "lista vazia" : "lista cheia");
}
