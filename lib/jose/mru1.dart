import'dart:io';

class autoMovil {
  double velocidad;
  int time;

  autoMovil({required this.velocidad, required this.time});
}

double distancia(double velocidad, int time) {
  return velocidad * time;
}

void main() {
  stdout.write('\nIngrese la velocidad a la que iba el vehiculo(m/sg): ');
  String? velocity = stdin.readLineSync()?? 'Velocidad no ingresada';

  if (velocity.trim().isEmpty) {
    print('Velocidad no válida.\n');
    return;
  }
  double v = double.tryParse(velocity) ?? 0;

  stdout.write('Ingrese el tiempo que estuvo en movimiento(sg): ');
  String? t = stdin.readLineSync()?? 'Tiempo no ingresado';

  if (t.trim().isEmpty) {
    print('Tiempo no válido.\n');
    return;
  }

  int T = int.tryParse(t) ?? 0;


  autoMovil auto = autoMovil(velocidad: v, time: T);
  print('El vehiculo se movio a una velocidad de ${auto.velocidad} m/sg durante ${auto.time} sg, recorriendo una distancia de ${distancia(auto.velocidad, auto.time)} metros.');
}

