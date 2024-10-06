import 'dart:io';

void main() {
  print('Ingrese el tamaño de la matriz N:');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz1 = [];
  List<List<int>> matriz2 = [];
  List<List<int>> suma = List.generate(n, (i) => List.filled(n, 0));

  print('Ingrese la primera matriz:');
  for (int i = 0; i < n; i++) {
    matriz1.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  }

  print('Ingrese la segunda matriz:');
  for (int i = 0; i < n; i++) {
    matriz2.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      suma[i][j] = matriz1[i][j] + matriz2[i][j];
    }
  }

  print('La suma de las matrices es:');
  for (var fila in suma) {
    print(fila);
  }
}
