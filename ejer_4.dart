import 'dart:io';

void main() {
  // Solicitar categoría del empleado
  print("Ingrese la categoría del empleado (A/B): ");
  String categoria = stdin.readLineSync()!.toUpperCase();

  // Solicitar horas trabajadas
  print("Ingrese la cantidad de horas trabajadas: ");
  double horasTrabajadas = double.parse(stdin.readLineSync()!);

  // Solicitar número de hijos
  print("Ingrese el número de hijos: ");
  int numeroHijos = int.parse(stdin.readLineSync()!);

  // Definir tarifas horarias
  double tarifaHoraria;
  if (categoria == 'A') {
    tarifaHoraria = 45.0;
  } else if (categoria == 'B') {
    tarifaHoraria = 37.5;
  } else {
    print("Categoría no válida. Finalizando el programa.");
    return;
  }

  // Calcular sueldo básico
  double sueldoBasico = horasTrabajadas * tarifaHoraria;

  // Calcular bonificación por hijos
  double bonificacionPorHijos;
  if (numeroHijos <= 3) {
    bonificacionPorHijos = numeroHijos * 40.5;
  } else {
    bonificacionPorHijos = (3 * 40.5) + ((numeroHijos - 3) * 35.0);
  }

  // Calcular sueldo bruto
  double sueldoBruto = sueldoBasico + bonificacionPorHijos;

  // Calcular descuento
  double porcentajeDescuento;
  if (sueldoBruto >= 3500) {
    porcentajeDescuento = 0.135; // 13.5%
  } else {
    porcentajeDescuento = 0.10; // 10%
  }

  double descuento = sueldoBruto * porcentajeDescuento;

  // Calcular sueldo neto
  double sueldoNeto = sueldoBruto - descuento;

  // Mostrar resultados
  print("\n--- Detalles del Sueldo ---");
  print("Sueldo Básico: S/. ${sueldoBasico.toStringAsFixed(2)}");
  print("Bonificación por Hijos: S/. ${bonificacionPorHijos.toStringAsFixed(2)}");
  print("Sueldo Bruto: S/. ${sueldoBruto.toStringAsFixed(2)}");
  print("Descuento: S/. ${descuento.toStringAsFixed(2)}");
  print("Sueldo Neto: S/. ${sueldoNeto.toStringAsFixed(2)}");
}
