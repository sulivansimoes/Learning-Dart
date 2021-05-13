void main() {
  var agora = DateTime.now();
  var outraData = DateTime(2021, 3, 1);

  print("Data atual:".padRight(20) + " $agora");
  print("Data anterior:".padRight(20) + " $outraData");

  print("Diferença em dias: ".padRight(20) +
      " ${agora.difference(outraData).inDays} ");

  print("Diferença em horas: ".padRight(20) +
      " ${agora.difference(outraData).inHours} ");
}
