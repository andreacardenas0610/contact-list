import 'dart:io';
import 'dart:math';

void main() {
  // Ejercicio 1: Distancia en MRU
  stdout.write('Velocidad (m/s): ');
  double v = double.parse(stdin.readLineSync()!);
  stdout.write('Tiempo (s): ');
  double t = double.parse(stdin.readLineSync()!);
  print('Distancia: ${v * t} m\n');

  // Ejercicio 2: Planilla de empleado
  stdout.write('Nombre: ');
  String nombre = stdin.readLineSync()!;
  stdout.write('Horas laboradas: ');
  double horas = double.parse(stdin.readLineSync()!);
  stdout.write('Tarifa por hora: ');
  double tarifa = double.parse(stdin.readLineSync()!);
  print('Empleado: $nombre | Horas: $horas | Total: \$${horas * tarifa}\n');

  // Ejercicio 3: Hipotenusa
  stdout.write('Cateto a: ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Cateto b: ');
  double b = double.parse(stdin.readLineSync()!);
  print('Hipotenusa: ${sqrt(pow(a, 2) + pow(b, 2))}\n');

  // Ejercicio 4: Conversión de Temperatura
  stdout.write('Temperatura °C: ');
  double c = double.parse(stdin.readLineSync()!);
  print('Fahrenheit: ${(c * 1.8) + 32} °F\n');

  // Ejercicio 5: Serie de Fibonacci (<= 100)
  int num1 = 1, num2 = 1;
  stdout.write('Fibonacci: $num1 $num2 ');
  int sig = num1 + num2;
  while (sig <= 100) {
    stdout.write('$sig ');
    num1 = num2;
    num2 = sig;
    sig = num1 + num2;
  }
  print('');
}