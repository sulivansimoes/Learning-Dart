void main() {
  var map = {
    "nome": "Súlivan",
    "idade": 23,
    "cidade": "Cambui",
    "estado": "MG"
  };

  print(map["nome"]);
  print(map["idade"]);
  print(map);

  map["nome"] = "Valter";
  print(map);

  //Map tipado
  Map<String, dynamic> map2 = {
    "nome": "jubscleison",
    "idade": 30,
    "cidade": "sinop",
    "estado": "MT"
  };

  print(map2);
}
