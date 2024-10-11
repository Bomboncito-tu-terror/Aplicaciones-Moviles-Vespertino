import 'dart:io';

void main() {
 
  Map<String, double> precios = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0,
  };

 
  String determinarRegalo(int cantidad) {
    if (cantidad < 26) {
      return "Un lapicero";
    } else if (cantidad >= 26 && cantidad <= 50) {
      return "Un cuaderno";
    } else {
      return "Una agenda";
    }
  }

 
  stdout.write("Ingrese el tipo de producto (P1, P2, P3): ");
  String? tipoProducto = stdin.readLineSync()?.toUpperCase();

 
  if (!precios.containsKey(tipoProducto)) {
    print("Tipo de producto no válido.");
    return;
  }

  
  stdout.write("Ingrese la cantidad de unidades adquiridas: ");
  int cantidad = int.parse(stdin.readLineSync()!);


  double precioUnitario = precios[tipoProducto]!;
  double importeAPagar = precioUnitario * cantidad;


  String regalo = determinarRegalo(cantidad);

 
  print("Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}");
  print("Regalo: $regalo");
}
