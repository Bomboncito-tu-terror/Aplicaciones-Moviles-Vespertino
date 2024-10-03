import 'dart:io';

// Función para obtener la pensión de acuerdo a la categoría
double obtenerPension(String categoria) {
  switch (categoria.toUpperCase()) {
    case 'A':
      return 550.0;
    case 'B':
      return 500.0;
    case 'C':
      return 460.0;
    case 'D':
      return 400.0;
    default:
      print('Categoría no válida');
      return 0.0;
  }
}


double obtenerDescuento(double promedio) {
  if (promedio >= 18.0 && promedio <= 20.0) {
    return 0.15;
  } else if (promedio >= 16.0 && promedio < 18.0) {
    return 0.12;
  } else if (promedio >= 14.0 && promedio < 16.0) {
    return 0.10;
  } else {
    return 0.0;
  }
}

void main() {

  print('Ingrese la categoría del estudiante (A, B, C, D): ');
  String? categoria = stdin.readLineSync();


  print('Ingrese el promedio ponderado del ciclo anterior: ');
  double? promedio = double.parse(stdin.readLineSync()!);

 
  double pensionBase = obtenerPension(categoria!);

  if (pensionBase == 0.0) {
    return;
  }

  double porcentajeDescuento = obtenerDescuento(promedio);


  double descuento = pensionBase * porcentajeDescuento;
  double nuevaPension = pensionBase - descuento;


  print('Pensión base: S/. $pensionBase');
  print('Descuento aplicado: S/. ${descuento.toStringAsFixed(2)}');
  print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
}
