import 'dart:io';
import 'dart:math';

void main() {
  print('Ingrese un número para calcular su factorial:');
  int n = int.parse(stdin.readLineSync()!);

  BigInt factorial = BigInt.one;

  for (int i = 1; i <= n; i++) {
    factorial *= BigInt.from(i);
  }

  print('El factorial de $n es: $factorial');
}
