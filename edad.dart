int calcularEdad(DateTime fechaNacimiento) {
  DateTime fechaActual = DateTime.now();
  int edad = fechaActual.year - fechaNacimiento.year;
  if (fechaActual.month < fechaNacimiento.month ||
      (fechaActual.month == fechaNacimiento.month &&
          fechaActual.day < fechaNacimiento.day)) {
    edad--;
  }
  return edad;
}

void main() {
  DateTime fechaNacimiento = DateTime(1990, 8, 25);
  int edad = calcularEdad(fechaNacimiento);
  print('La edad es $edad años.');
}
