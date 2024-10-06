import 'dart:io';

void main() {
  print('Números perfectos entre 1 y 10,000:');
  for (int i = 1; i <= 10000; i++) {
    if (esNumeroPerfecto(i)) {
      print(i);
    }
  }
}

bool esNumeroPerfecto(int numero) {
  int sumaDivisores = 0;
  for (int i = 1; i < numero; i++) {
    if (numero % i == 0) {
      sumaDivisores += i;
    }
  }
  return sumaDivisores == numero;
}
