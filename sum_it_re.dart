import 'dart:io';

int sumatoriaIterativa(int n) {
  int suma = 0;
  for (int i = 0; i < n; i++) {
    stdout.write('Ingrese un número: ');
    int numero = int.parse(stdin.readLineSync()!);
    suma += numero;
  }
  return suma;
}

void main() {
  stdout.write('¿Cuántos números deseas ingresar? ');
  int n = int.parse(stdin.readLineSync()!);
  int resultado = sumatoriaIterativa(n);
  print('La sumatoria iterativa es: $resultado');
}
