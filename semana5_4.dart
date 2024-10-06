import 'dart:io';

void main() {
  print('Ingrese un número entero:');
  int numero = int.parse(stdin.readLineSync()!);
  int inverso = 0;

  while (numero > 0) {
    inverso = inverso * 10 + (numero % 10);
    numero ~/= 10;
  }

  print('El número invertido es: $inverso');
}
