bool esPar(int numero) {
  return numero % 2 == 0;
}

void main() {
  int numero = 543;
  if (esPar(numero)) {
    print('$numero es par.');
  } else {
    print('$numero es impar.');
  }
}
