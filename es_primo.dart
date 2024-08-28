bool esPrimo(int numero) {
  if (numero <= 1) {
    return false;
  }
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int numero = 7;
  if (esPrimo(numero)) {
    print('$numero es primo.');
  } else {
    print('$numero no es primo.');
  }
}
