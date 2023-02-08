void main() {
  String nome = 'Anderson';
  int idade = 15;
  bool acompanhado = true;

  if (idade > 17) {
    print('Parabéns $nome, seu ingresso está disponível!!!');
  } else {
    if (acompanhado) {
      print('Bem-vindos $nome e seu acompanhante, seus ingressos estão disponível');
    }else{
      print('Lamento, não é possível adquirir o ingresso!!!');
    }
  }
}
