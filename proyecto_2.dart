import 'dart:io';

void main() {
  // Solicitar la cantidad de dinero a repartir
  print('Ingrese la cantidad de dinero a repartir:');
  double montoTotal = double.parse(stdin.readLineSync()!);

  // Cálculo de la cantidad que recibe cada hijo
  double josue = 0.27 * montoTotal;
  double daniel = 0.25 * montoTotal;
  double tamar = 0.85 * josue;
  double caleb = 0.23 * (josue + daniel);
  
  // Cálculo del dinero que queda para David
  double david = montoTotal - (josue + tamar + caleb + daniel);

  // Mostrar los resultados
  print('Dinero recibido por cada hijo:');
  print('Josué: \$${josue.toStringAsFixed(2)}');
  print('Daniel: \$${daniel.toStringAsFixed(2)}');
  print('Tamar: \$${tamar.toStringAsFixed(2)}');
  print('Caleb: \$${caleb.toStringAsFixed(2)}');
  print('David: \$${david.toStringAsFixed(2)}');
}
