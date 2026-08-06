import 'dart:io';

//Clase persona
class Person {
  String Name;
  int Age;

  //Constructor de la clase
  Person({required this.Name, required this.Age});

  //Metodo para evaluar si es mayor de edad
  bool isAnAdult() {
    return Age >= 18;
  }

  //Metodo para mostrar los resultados
  void isAdult() {
    if (isAnAdult()) {
      print("$Name es mayor de edad.");
    } else { 
      print("$Name no es mayor de edad.");
    }
  }
}

void main() {
  //Entradas
  stdout.write("Ingrese su nombre: ", );
  String? Name = stdin.readLineSync() ?? "Desconocido";

  stdout.write("Ingrese su edad: ");
  String? Age = stdin.readLineSync() ?? "0";

  Person person = Person(Name: Name, Age: int.parse(Age));

  //Llamada al metodo para mostrar los resultados
  person.isAdult();
}