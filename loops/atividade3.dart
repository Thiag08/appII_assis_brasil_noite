void main() {
  // List<int> A = List.generate(10, (i) => i * i);
  // List<int> B = [];

  // B.add(A[0]);
  // for (int i = 1; i < A.length; i++) {
  //   if (A[i] % 2 == 0) {
  //     B.add(A[i]);
  //   }
  // }
  // print(A);
  // print(B);

  var numero = 1;
  List<num> N = List.filled(10, 0);
  N[0] = numero;
  for (int i = 0; i < 9; i++) {
    N[i + 1] = N[i] * 2;
  }
  print(N);
}
