import 'dart:io';

void main() {
  print('Ingrese la base:');
  int base = int.parse(stdin.readLineSync()!);
  
  print('Ingrese el exponente:');
  int exponente = int.parse(stdin.readLineSync()!);
  
  int resultado = 1;

  for (int i = 0; i < exponente; i++) {
    resultado *= base;
  }

  print('El resultado de $base elevado a la $exponente es: $resultado');
}
