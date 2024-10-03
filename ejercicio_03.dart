import 'dart:io';


double calcularComision(double importeVendido) {
  if (importeVendido > 15000) {
    return importeVendido * 0.07; 
  } else {
    return importeVendido * 0.05; 
  }
}


double calcularBonificacion(int numHijos) {
  if (numHijos < 5) {
    return numHijos * 25.0; 
  } else {
    return numHijos * 22.0;
  }
}

double calcularDescuento(double sueldoBruto) {
  if (sueldoBruto > 3500) {
    return sueldoBruto * 0.15; 
  } else {
    return sueldoBruto * 0.11; 
  }
}

void main() {
  const double sueldoBasico = 600.0;

  print('Ingrese el importe total vendido: ');
  double? importeVendido = double.parse(stdin.readLineSync()!);

  print('Ingrese el número de hijos: ');
  int? numHijos = int.parse(stdin.readLineSync()!);

  double comision = calcularComision(importeVendido);

  double bonificacion = calcularBonificacion(numHijos);

  double sueldoBruto = sueldoBasico + comision + bonificacion;

  double descuento = calcularDescuento(sueldoBruto);

  double sueldoNeto = sueldoBruto - descuento;

 
  print('Sueldo básico: S/. $sueldoBasico');
  print('Comisión: S/. ${comision.toStringAsFixed(2)}');
  print('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}');
  print('Sueldo bruto: S/. ${sueldoBruto.toStringAsFixed(2)}');
  print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Sueldo neto: S/. ${sueldoNeto.toStringAsFixed(2)}');
}
