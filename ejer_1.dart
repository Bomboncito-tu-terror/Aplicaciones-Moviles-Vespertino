import 'dart:io';

void main() {
  const double sueldoBasico = 350.75; 
  const double porcentajeComision = 0.05; 
  const double porcentajeDescuento = 0.15; 

 
  print("Ingrese el importe total vendido en el mes: ");
  double importeVendido = double.parse(stdin.readLineSync()!);

 
  double comision = importeVendido * porcentajeComision;


  double sueldoBruto = sueldoBasico + comision;

 
  double descuento = sueldoBruto * porcentajeDescuento;


  double sueldoNeto = sueldoBruto - descuento;


  print("\n--- Boleta de Pago ---");
  print("Sueldo Básico: S/. ${sueldoBasico.toStringAsFixed(2)}");
  print("Comisión: S/. ${comision.toStringAsFixed(2)}");
  print("Sueldo Bruto: S/. ${sueldoBruto.toStringAsFixed(2)}");
  print("Descuento: S/. ${descuento.toStringAsFixed(2)}");
  print("Sueldo Neto: S/. ${sueldoNeto.toStringAsFixed(2)}");
}
