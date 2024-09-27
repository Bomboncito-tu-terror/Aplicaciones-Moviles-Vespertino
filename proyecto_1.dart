import 'dart:io';
import 'dart:math'; // Importación del paquete math

void main() {
  // Solicitar el radio y la altura al usuario
  print('Ingrese el radio del cilindro (r):');
  double r = double.parse(stdin.readLineSync()!);
  
  print('Ingrese la altura del cilindro (h):');
  double h = double.parse(stdin.readLineSync()!);

  // Calcular el área total y el volumen
  double areaTotal = calcularAreaTotal(r, h);
  double volumen = calcularVolumen(r, h);

  // Mostrar los resultados
  print('El área total del cilindro es: ${areaTotal.toStringAsFixed(2)}');
  print('El volumen del cilindro es: ${volumen.toStringAsFixed(2)}');
}

double calcularAreaTotal(double r, double h) {
  return 2 * pi * r * (r + h);
}

double calcularVolumen(double r, double h) {
  return pi * pow(r, 2) * h;
}
