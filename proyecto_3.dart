import 'dart:io';

void main() {
  // Solicitar la cantidad total de dinero a invertir
  print('Ingrese el monto total de dinero a invertir:');
  double montoTotal = double.parse(stdin.readLineSync()!);

  // Cálculo de los gastos en cada rubro
  double alquiler = 0.23 * montoTotal;
  double publicidad = 0.07 * montoTotal;
  double transporte = 0.26 * montoTotal;
  double serviciosFeriales = 0.12 * montoTotal;
  double decoracion = 0.21 * montoTotal;
  double gastosVarios = 0.11 * montoTotal;

  // Mostrar los resultados
  print('Gastos de la empresa "Juanito Import" SAC:');
  print('Alquiler de espacio en la feria: \$${alquiler.toStringAsFixed(2)}');
  print('Publicidad: \$${publicidad.toStringAsFixed(2)}');
  print('Transporte: \$${transporte.toStringAsFixed(2)}');
  print('Servicios feriales: \$${serviciosFeriales.toStringAsFixed(2)}');
  print('Decoración: \$${decoracion.toStringAsFixed(2)}');
  print('Gastos varios: \$${gastosVarios.toStringAsFixed(2)}');
}
