import 'dart:io';

void main() {
  // Porcentajes de gastos
  const double porcentajeAlquiler = 0.23; // Alquiler de espacio en la feria
  const double porcentajePublicidad = 0.07; // Publicidad
  const double porcentajeTransporte = 0.26; // Transporte
  const double porcentajeServicios = 0.12; // Servicios feriales
  const double porcentajeDecoracion = 0.21; // Decoración
  const double porcentajeGastosVarios = 0.11; // Gastos varios

  // Solicitar el monto total a invertir
  print("Ingrese el monto total de dinero a invertir: ");
  double montoTotal = double.parse(stdin.readLineSync()!);

  // Calcular el gasto en cada rubro
  double gastoAlquiler = montoTotal * porcentajeAlquiler;
  double gastoPublicidad = montoTotal * porcentajePublicidad;
  double gastoTransporte = montoTotal * porcentajeTransporte;
  double gastoServicios = montoTotal * porcentajeServicios;
  double gastoDecoracion = montoTotal * porcentajeDecoracion;
  double gastoGastosVarios = montoTotal * porcentajeGastosVarios;

  // Mostrar los resultados
  print("\n--- Gastos en la Feria ---");
  print("Alquiler de espacio en la feria: S/. ${gastoAlquiler.toStringAsFixed(2)}");
  print("Publicidad: S/. ${gastoPublicidad.toStringAsFixed(2)}");
  print("Transporte: S/. ${gastoTransporte.toStringAsFixed(2)}");
  print("Servicios feriales: S/. ${gastoServicios.toStringAsFixed(2)}");
  print("Decoración: S/. ${gastoDecoracion.toStringAsFixed(2)}");
  print("Gastos varios: S/. ${gastoGastosVarios.toStringAsFixed(2)}");
}
