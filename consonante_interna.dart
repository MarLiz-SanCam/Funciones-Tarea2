String primeraConsonanteInterna(String texto) {
  String vocales = "aeiouAEIOU";

  for (int i = 1; i < texto.length - 1; i++) {
    if (!vocales.contains(texto[i]) && RegExp(r'[a-zA-Z]').hasMatch(texto[i])) {
      return texto[i];
    }
  }
  return ''; // Si no se encuentra ninguna consonante interna, retorna un string vacío.
}

void main() {
  String texto = "Qwerty";
  String primeraConsonante = primeraConsonanteInterna(texto);
  if (primeraConsonante.isNotEmpty) {
    print('Primera consonante interna: $primeraConsonante');
  } else {
    print('No se encontró ninguna consonante interna.');
  }
}
