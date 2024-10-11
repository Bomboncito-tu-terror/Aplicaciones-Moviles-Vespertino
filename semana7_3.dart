import 'dart:io';

void main() {

  Map<String, double> precios = {
    'Primor': 8.5,
    'Dulzura': 10.0,
    'Tentación': 7.0,
    'Explosión': 12.5,
  };

  double calcularDescuento(int cantidad) {
    if (cantidad < 5) {
      return 0.04;
    } else if (cantidad >= 5 && cantidad < 10) {
      return 0.065;
    } else if (cantidad >= 10 && cantidad < 15) {
      return 0.09;
    } else {
      return 0.115;
    }
  }


  stdout.write("Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión): ");
  String? tipoChocolate = stdin.readLineSync();


  if (!precios.containsKey(tipoChocolate)) {
    print("Tipo de chocolate no válido.");
    return;
  }


  stdout.write("Ingrese la cantidad de chocolates: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  double precioUnitario = precios[tipoChocolate]!;
  double importeCompra = precioUnitario * cantidad;


  double descuento = calcularDescuento(cantidad);
  double importeDescuento = importeCompra * descuento;
  double importeAPagar = importeCompra - importeDescuento;

 
  int caramelos = importeAPagar >= 250 ? cantidad * 3 : cantidad * 2;


  print("Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}");
  print("Descuento aplicado: S/. ${importeDescuento.toStringAsFixed(2)}");
  print("Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}");
  print("Cantidad de caramelos de obsequio: $caramelos");
}
