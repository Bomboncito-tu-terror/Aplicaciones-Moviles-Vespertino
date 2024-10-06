import 'dart:io';

void main() {
  print('Ingrese el primer número:');
  int inicio = int.parse(stdin.readLineSync()!);
  
  print('Ingrese el segundo número:');
  int fin = int.parse(stdin.readLineSync()!);

  int sumaPrimos = 0;

  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumaPrimos += i;
    }
  }

  print('La sumatoria de los números primos en el rango es: $sumaPrimos');
}

bool esPrimo(int numero) {
  if (numero < 2) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}
