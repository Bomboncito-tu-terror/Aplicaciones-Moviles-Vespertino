import 'dart:io';

void main() {
  print('Ingrese el tamaño de la matriz (n):');
  int n = int.parse(stdin.readLineSync()!);
  List<List<int>> matriz = List.generate(n, (i) => List.filled(n, 0));

  int valor = 1;
  int izquierda = 0, derecha = n - 1, arriba = 0, abajo = n - 1;

  while (valor <= n * n) {
    for (int i = izquierda; i <= derecha; i++) {
      matriz[arriba][i] = valor++;
    }
    arriba++;

    for (int i = arriba; i <= abajo; i++) {
      matriz[i][derecha] = valor++;
    }
    derecha--;

    for (int i = derecha; i >= izquierda; i--) {
      matriz[abajo][i] = valor++;
    }
    abajo--;

    for (int i = abajo; i >= arriba; i--) {
      matriz[i][izquierda] = valor++;
    }
    izquierda++;
  }

  print('Matriz en espiral:');
  for (var fila in matriz) {
    print(fila);
  }
}
