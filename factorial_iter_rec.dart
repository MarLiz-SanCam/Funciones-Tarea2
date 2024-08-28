int factorialRecursiva(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorialRecursiva(n - 1);
  }
}

int factorialIterativa(int n) {
  int resultado = 1;
  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}

void main() {
  int numero = 5;

  int resultadoIterativa = factorialIterativa(numero);
  int resultadoRecursiva = factorialRecursiva(numero);

  print('Factorial de $numero (iterativa): $resultadoIterativa');
  print('Factorial de $numero (recursiva): $resultadoRecursiva');
}
