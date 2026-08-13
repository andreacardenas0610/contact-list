import 'dart:io';
import 'dart:math';

class triangle {
  double base;
  double height;

  triangle({required this.base, required this.height});
}

double hypotenuse(double base, double height) {
  return sqrt(pow(base, 2) + pow(height, 2));
}

void main() {
  stdout.write('Ingrese la base del triangulo: ');
  String? baseInput = stdin.readLineSync() ?? 'Base no ingresada';
  if (baseInput.trim().isEmpty){
    print('Base no válida.\n');
    return;
  }
  double b = double.tryParse(baseInput) ?? 0;

  stdout.write('Ingrese la altura del triangulo: ');
  String? heightInput = stdin.readLineSync() ?? 'Altura no ingresada';
  if (heightInput.trim().isEmpty){
    print('Altura no valida.\n');
    return;
  }
  double h = double.tryParse(heightInput) ?? 0;

  triangle tri = triangle(base: b, height: h);

  print('El triangulo tiene una base de ${tri.base} y una altura de ${tri.height}, por lo que su hipotenusa es de ${hypotenuse(tri.base, tri.height)}');
}