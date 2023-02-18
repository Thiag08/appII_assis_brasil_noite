import 'dart:io';

void main() {
  print('Digite um número positivo inteiro');
  String numero = stdin.readLineSync()!;
  int numeroConvertido = int.parse(numero);

  if (numeroConvertido < 0) {
    numeroConvertido = numeroConvertido.abs();
    numero = numeroConvertido.toString();
  }

  List<String> digitos = numero.split('');
  int decomposicao = 0;

  for (int i = 0; i < digitos.length; i++) {
    decomposicao += int.parse(digitos[i]);
  }
  print("A decomposição do número $numero é $decomposicao");
}
