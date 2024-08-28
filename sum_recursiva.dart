import 'dart:io';

int sumatoriaRecursiva(int n) {
  if (n == 0) {
    return 0;
  } else {
    stdout.write('Ingrese un número: ');
    int numero = int.parse(stdin.readLineSync()!);
    return numero + sumatoriaRecursiva(n - 1);
  }
}

void main() {
  stdout.write('¿Cuántos números deseas ingresar? ');
  int n = int.parse(stdin.readLineSync()!);
  int resultado = sumatoriaRecursiva(n);
  print('La sumatoria recursiva es: $resultado');
}
