import 'dart:io';

class User {
  String name;
  int age;

User ({required this.name, required this.age});

bool isAnAdult() {
  return age >= 18;
}

void isAdult() {
  if (isAnAdult()) {
    print('$name es mayor de edad.');
  } else {
    print('$name es menor de edad.');
  }
}
}

void main() {
  stdout.write('\nIngrese su nombre: ');
  String? name = stdin.readLineSync()?? 'Nombre no ingresado';

  if (name.trim().isEmpty) {
    print('No se ingresó un nombre válido.\n');
    return;
  }

  stdout.write('Ingrese su edad: ');
  String? ageInput = stdin.readLineSync()?? '0';
  
    if (ageInput.trim().isEmpty) {
    print('No se ingresó un edad válida.\n');
    return;
  }
  int age = int.tryParse(ageInput) ?? 0;

  if (age < 0) {
    print('Edad no válida.\n');
    return;
  }

  User user = User(name: name, age: age);
  user.isAdult();

}
