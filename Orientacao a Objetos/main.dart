import 'address.dart';
import 'people.dart';

void main() {
  
  People joao = People(
    "João Paulo Silva da Silva",
    Address(
      city: "Porto Alegre",
      street: "Rua A",
    ),
  );

  print(joao.address.street);
}
