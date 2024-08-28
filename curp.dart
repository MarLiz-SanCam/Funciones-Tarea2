String generarCurp(String nombre, String apepat, String apemat, String fNac,
    String sexo, String estado) {
  // 1. Primera letra y primera vocal interna del apellido paterno
  String primeraLetraApellidoPaterno = apepat[0];
  String primeraVocalInternaApellidoPaterno = apepat
      .substring(1)
      .split('')
      .firstWhere((c) => "AEIOUaeiou".contains(c), orElse: () => '');

  // 2. Primera letra del apellido materno
  String primeraLetraApellidoMaterno = apemat.isNotEmpty ? apemat[0] : 'X';

  // 3. Primera letra del primer nombre
  String primeraLetraNombre = nombre[0];

  // 4. Fecha de nacimiento (año, mes, día) en formato YYMMDD
  String anio = fNac.substring(2, 4);
  String mes = fNac.substring(5, 7);
  String dia = fNac.substring(8, 10);

  // 5. Sexo (H o M)
  String letraSexo = sexo.toUpperCase();

  // 6. Clave del estado de nacimiento (TC, VZ, DF, etc.)
  String claveEstado = estado.toUpperCase();

  // 7. Primera consonante interna de los apellidos y nombre
  String consonanteInternaApellidoPaterno = apepat
      .substring(1)
      .split('')
      .firstWhere((c) => !"AEIOUaeiou".contains(c), orElse: () => 'X');
  String consonanteInternaApellidoMaterno = apemat.isNotEmpty
      ? apemat
          .substring(1)
          .split('')
          .firstWhere((c) => !"AEIOUaeiou".contains(c), orElse: () => 'X')
      : 'X';
  String consonanteInternaNombre = nombre
      .substring(1)
      .split('')
      .firstWhere((c) => !"AEIOUaeiou".contains(c), orElse: () => 'X');

  // 8. Homoclave (para simplificación, uso un valor fijo)
  String homoclave = 'MA';

  // 9. Dígito verificador (para simplificación, uso un valor fijo)
  String digitoVerificador = '2';

  // Concatenar todo para formar la CURP
  String curp =
      '$primeraLetraApellidoPaterno$primeraVocalInternaApellidoPaterno'
      '$primeraLetraApellidoMaterno$primeraLetraNombre$anio$mes$dia'
      '$letraSexo$claveEstado$consonanteInternaApellidoPaterno'
      '$consonanteInternaApellidoMaterno$consonanteInternaNombre'
      '$homoclave$digitoVerificador';

  return curp.toUpperCase();
}

void main() {
  // Ejemplo de uso
  String curp =
      generarCurp('Marina', 'santini', 'Camarena', '2001-07-10', 'M', 'DF');
  print('CURP generada: $curp');
}

/*print('Ingrese su nombre:');
  String nombre = stdin.readLineSync()!;

  print('Ingrese su apellido paterno:');
  String apepat = stdin.readLineSync()!;

  print('Ingrese su apellido materno:');
  String apemat = stdin.readLineSync()!;

  print('Ingrese su fecha de nacimiento (YYYY-MM-DD):');
  String fNac = stdin.readLineSync()!;

  print('Ingrese su sexo (H o M):');
  String sexo = stdin.readLineSync()!;

  print('Ingrese la clave del estado de nacimiento (e.g., TC, VZ, DF):');
  String estado = stdin.readLineSync()!;

  String curp = generarCurp(nombre, apepat, apemat, fNac, sexo, estado);

  print('CURP generada: $curp');*/