String primeraVocalInterna(String texto) {
  String vocales = "aeiouAEIOU";

  for (int i = 1; i < texto.length - 1; i++) {
    if (vocales.contains(texto[i])) {
      return texto[i];
    }
  }
  return ''; // Si no se encuentra ninguna vocal interna, retorna un string vacío.
}

void main() {
  String texto = "SEParadas";
  String primeraVocal = primeraVocalInterna(texto);
  if (primeraVocal.isNotEmpty) {
    print('Primera vocal interna: $primeraVocal');
  } else {
    print('No se encontró ninguna vocal interna.');
  }
}
