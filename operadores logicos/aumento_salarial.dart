void main() {
  double salario = 1400;
  double aumento = 1.15;
  int tempoDeEmpresa = 6;

  if (tempoDeEmpresa > 5 && salario < 1500) {
    // salario = salario * aumento;
    salario *= aumento;
  } else if (tempoDeEmpresa > 3 && salario < 1000) {
    salario *= aumento;
  } else if (tempoDeEmpresa > 1 && salario < 800) {
    salario *= aumento;
  }

  print('O novo salário do funcionário é R\$ ${salario.toStringAsFixed(2)}');
}
