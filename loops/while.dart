import 'dart:io';

void main() {
  print('Digite uma opção dentre as apresentadas:');
  print('1 - Somar');
  print('2 - Subtrair');
  print('3 - Multiplicar');
  print('4 - Dividir');
  print('0 - Sair');
  int opcao = int.parse(stdin.readLineSync()!);

  // Chamando a função para ser executada
  repetir(opcao);
} // Main

// Declarando a função
void repetir(int opcao) {
  while (opcao != 0) {
    print('Digite o primeiro número:');
    double numero1 = double.parse(stdin.readLineSync()!);
    print('Digite o segundo número:');
    double numero2 = double.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        double resultado = numero1 + numero2;
        print('A soma é $resultado');
        break;
      case 2:
        double resultado = numero1 - numero2;
        print('A subtração é $resultado');
        break;
      case 3:
        double resultado = numero1 * numero2;
        print('A multiplicação é $resultado');
        break;
      case 4:
        double resultado = numero1 / numero2;
        print('A divisão é $resultado');
        break;
      default:
        print('Opção inválida');
    } // Switch
    print('Digite uma nova operação matemática');
    opcao = int.parse(stdin.readLineSync()!);
  } // While
}
