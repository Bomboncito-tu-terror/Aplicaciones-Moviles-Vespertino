import 'dart:io';
import 'dart:math';

void main() {
  print('Ingrese un número para verificar si es un número de Armstrong:');
  int numero = int.parse(stdin.readLineSync()!);
  int suma = 0;
  int temp = numero;
  int cantidadDigitos = numero.toString().length;

  while (temp > 0) {
    int digito = temp % 10;
    suma += pow(digito, cantidadDigitos).toInt();
    temp ~/= 10;
  }

  if (suma == numero) {
    print('$numero es un número de Armstrong.');
  } else {
    print('$numero no es un número de Armstrong.');
  }
}
