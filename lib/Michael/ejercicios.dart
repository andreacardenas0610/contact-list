import 'dart:io';
import 'dart:math';

// ==========================================
// 1. CÁLCULO DE DISTANCIA (MRU)
// ==========================================
class CalculadoraMru {
  double calcularDistancia(double velocidad, double tiempo) {
    return velocidad * tiempo;
  }

  void ejecutar() {
    print('\n--- 1. CÁLCULO DE DISTANCIA (MRU) ---');
    stdout.write('Ingrese la velocidad constante (m/s): ');
    double velocidad = double.parse(stdin.readLineSync()!);

    stdout.write('Ingrese el tiempo transcurrido (s): ');
    double tiempo = double.parse(stdin.readLineSync()!);

    double distancia = calcularDistancia(velocidad, tiempo);
    print('La distancia recorrida es: ${distancia.toStringAsFixed(2)} metros.');
  }
}

// ==========================================
// 2. PLANILLA DE EMPLEADO
// ==========================================
class Empleado {
  String nombre;
  double horasLaboradas;
  double tarifaPorHora;

  Empleado({
    required this.nombre,
    required this.horasLaboradas,
    required this.tarifaPorHora,
  });

  double calcularTotalDevengado() {
    return horasLaboradas * tarifaPorHora;
  }

  void imprimirPlanilla() {
    print('\n--- 2. PLANILLA DE EMPLEADO ---');
    print('Nombre del empleado: $nombre');
    print('Horas laboradas: $horasLaboradas');
    print('Total devengado: \$${calcularTotalDevengado().toStringAsFixed(2)}');
  }

  static void ejecutar() {
    stdout.write('\nIngrese el nombre del empleado: ');
    String nombre = stdin.readLineSync()!;

    stdout.write('Ingrese las horas laboradas en el mes: ');
    double horas = double.parse(stdin.readLineSync()!);

    stdout.write('Ingrese la tarifa por hora: ');
    double tarifa = double.parse(stdin.readLineSync()!);

    Empleado empleado = Empleado(
      nombre: nombre,
      horasLaboradas: horas,
      tarifaPorHora: tarifa,
    );

    empleado.imprimirPlanilla();
  }
}

// ==========================================
// 3. HIPOTENUSA DE UN TRIÁNGULO RECTÁNGULO
// ==========================================
class CalculadoraGeometria {
  double calcularHipotenusa(double catetoA, double catetoB) {
    return sqrt(pow(catetoA, 2) + pow(catetoB, 2));
  }

  void ejecutar() {
    print('\n--- 3. CÁLCULO DE HIPOTENUSA ---');
    stdout.write('Ingrese la longitud del cateto A: ');
    double catetoA = double.parse(stdin.readLineSync()!);

    stdout.write('Ingrese la longitud del cateto B: ');
    double catetoB = double.parse(stdin.readLineSync()!);

    double hipotenusa = calcularHipotenusa(catetoA, catetoB);
    print('La hipotenusa del triángulo es: ${hipotenusa.toStringAsFixed(2)}');
  }
}

// ==========================================
// 4. CONVERSIÓN DE TEMPERATURA
// ==========================================
class ConvertidorTemperatura {
  double celsiusAFahrenheit(double celsius) {
    return (celsius * 1.8) + 32;
  }

  void ejecutar() {
    print('\n--- 4. CONVERSOR DE TEMPERATURA ---');
    stdout.write('Ingrese la temperatura en grados Celsius (°C): ');
    double celsius = double.parse(stdin.readLineSync()!);

    double fahrenheit = celsiusAFahrenheit(celsius);
    print('La temperatura equivalente es: ${fahrenheit.toStringAsFixed(2)} °F');
  }
}

// ==========================================
// 5. SERIE FIBONACCI (<= 100)
// ==========================================
class GeneradorSerie {
  List<int> obtenerFibonacciHasta(int limite) {
    List<int> serie = [];
    int a = 1;
    int b = 1;

    while (a <= limite) {
      serie.add(a);
      int siguiente = a + b;
      a = b;
      b = siguiente;
    }

    return serie;
  }

  void ejecutar() {
    print('\n--- 5. SERIE FIBONACCI (<= 100) ---');
    List<int> resultado = obtenerFibonacciHasta(100);
    print('Serie generada: ${resultado.join(" ")}');
  }
}

// ==========================================
// PROGRAMA PRINCIPAL CON MENÚ
// ==========================================
void main() {
  bool continuar = true;

  while (continuar) {
    print('\n==========================================');
    print('        MENÚ DE ALGORITMOS EN DART        ');
    print('==========================================');
    print('1. Calcular Distancia Recorrida (MRU)');
    print('2. Elaborar Planilla de Empleado');
    print('3. Calcular Hipotenusa de un Triángulo');
    print('4. Convertir Celsius a Fahrenheit');
    print('5. Generar Serie Fibonacci (<= 100)');
    print('6. Salir');
    stdout.write('Seleccione una opción (1-6): ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        CalculadoraMru().ejecutar();
        break;
      case '2':
        Empleado.ejecutar();
        break;
      case '3':
        CalculadoraGeometria().ejecutar();
        break;
      case '4':
        ConvertidorTemperatura().ejecutar();
        break;
      case '5':
        GeneradorSerie().ejecutar();
        break;
      case '6':
        print('\n¡Hasta luego!');
        continuar = false;
        break;
      default:
        print('\nOpción no válida. Intente nuevamente.');
    }
  }
}
