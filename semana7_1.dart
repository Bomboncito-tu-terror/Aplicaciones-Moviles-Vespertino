import 'dart:io';

void main() {

  Map<String, double> pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };


  double obtenerDescuento(double promedio) {
    if (promedio >= 0 && promedio < 14) {
      return 0.0;
    } else if (promedio >= 14 && promedio < 16) {
      return 0.10;
    } else if (promedio >= 16 && promedio < 18) {
      return 0.12;
    } else if (promedio >= 18 && promedio <= 20) {
      return 0.15;
    } else {
      return -1; 
    }
  }

 
  stdout.write("Ingrese la categoría del estudiante (A, B, C o D): ");
  String? categoria = stdin.readLineSync()?.toUpperCase();

  
  if (!pensiones.containsKey(categoria)) {
    print("Categoría no válida.");
    return;
  }

 
  stdout.write("Ingrese el promedio ponderado del estudiante: ");
  double promedio = double.parse(stdin.readLineSync()!);

  double descuento = obtenerDescuento(promedio);


  if (descuento == -1) {
    print("Promedio no válido.");
    return;
  }


  double pensionOriginal = pensiones[categoria]!;
  double montoDescuento = pensionOriginal * descuento;
  double nuevaPension = pensionOriginal - montoDescuento;

  print("La pensión original es: S/. ${pensionOriginal.toStringAsFixed(2)}");
  print("El descuento aplicado es: S/. ${montoDescuento.toStringAsFixed(2)}");
  print("La nueva pensión a pagar es: S/. ${nuevaPension.toStringAsFixed(2)}");
}
