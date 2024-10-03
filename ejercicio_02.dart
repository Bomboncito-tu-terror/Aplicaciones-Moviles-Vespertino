import 'dart:io';


double obtenerDescuento(int nivel, int edad) {
  if (edad > 18) {
    switch (nivel) {
      case 1:
        return 0.40; 
      case 2:
        return 0.30; 
      case 3:
        return 0.15;
      default:
        return 0.0; 
    }
  } else if (edad == 18) {

    switch (nivel) {
      case 1:
        return 0.60; 
      case 2:
        return 0.40; 
      case 3:
        return 0.20;
      default:
        return 0.0; 
    }
  } else {
    return 0.0;
  }
}

void main() {
  
  print('Ingrese la edad del hombre: ');
  int? edad = int.parse(stdin.readLineSync()!);


  print('Ingrese el nivel del sistema de beneficio (1, 2, 3 o mayor): ');
  int? nivel = int.parse(stdin.readLineSync()!);

 
  double costoBase;
  if (edad > 18) {
    costoBase = 350.0;
  } else if (edad == 18) {
    costoBase = 200.0;
  } else {
    print('Edad no válida para la libreta militar.');
    return;
  }


  double porcentajeDescuento = obtenerDescuento(nivel, edad);

 
  double descuento = costoBase * porcentajeDescuento;
  double valorFinal = costoBase - descuento;

 
  print('Costo base de la libreta: S/. $costoBase');
  print('Descuento aplicado: S/. ${descuento.toStringAsFixed(2)}');
  print('Valor final a pagar: S/. ${valorFinal.toStringAsFixed(2)}');
}
