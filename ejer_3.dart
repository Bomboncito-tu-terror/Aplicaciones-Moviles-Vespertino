import 'dart:io';

void main() {
  // Solicitar el precio de la camisa
  print("Ingrese el precio de la camisa: ");
  double precioCamisa = double.parse(stdin.readLineSync()!);

  // Solicitar la cantidad de camisas adquiridas
  print("Ingrese la cantidad de camisas adquiridas: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  // Calcular el importe de la compra
  double importeCompra = precioCamisa * cantidad;

  // Calcular el primer descuento
  double primerDescuento = importeCompra * 0.07;

  // Calcular el importe después del primer descuento
  double importeDespuesPrimerDescuento = importeCompra - primerDescuento;

  // Calcular el segundo descuento
  double segundoDescuento = importeDespuesPrimerDescuento * 0.07;

  // Calcular el descuento total
  double descuentoTotal = primerDescuento + segundoDescuento;

  // Calcular el importe a pagar
  double importeAPagar = importeCompra - descuentoTotal;

  // Mostrar los resultados
  print("\n--- Detalles de la Compra ---");
  print("Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}");
  print("Importe del primer descuento: S/. ${primerDescuento.toStringAsFixed(2)}");
  print("Importe del segundo descuento: S/. ${segundoDescuento.toStringAsFixed(2)}");
  print("Importe del descuento total: S/. ${descuentoTotal.toStringAsFixed(2)}");
  print("Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}");
}
