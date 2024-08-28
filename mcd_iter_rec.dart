int mcdIterativa(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

int mcdRecursiva(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return mcdRecursiva(b, a % b);
  }
}

void main() {
  int a = 56;
  int b = 98;
  int resultadoIt = mcdIterativa(a, b);
  int resultadoRec = mcdRecursiva(a, b);
  print('El MCD iterativo de $a y $b es: $resultadoIt');
  print('El MCD recursivo de $a y $b es: $resultadoRec');
}
