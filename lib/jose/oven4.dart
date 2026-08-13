import 'dart:io';

class oven {
  double temperature;

  oven({required this.temperature});
}

double degree(temperature) {
  double F = (temperature - 32) * 5 / 9;
  return F;
}

void main() {
  stdout.write('Ingrese la temperatura en grados Celsius: ');
  String? tempInput = stdin.readLineSync() ?? 'Temperatura no ingresada';
  if (tempInput.trim().isEmpty) {
    print('Temperatura no válida.\n');
    return;
  }
  double temp = double.tryParse(tempInput) ?? 0;

  oven O = oven(temperature: temp);

  print('${O.temperature} grados Celsius equivale a ${degree(O.temperature)} grados Fahrenheit');
}