import 'dart:io';

// El Aprendiz 2 definirá los atributos de esta clase
class Contact{
  String name;
  String phone;
  Contact(this.name, this.phone);
}

void main() {
  List<Contact>diary = [];
  bool running = true;

  while (running) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

   switch (opcion) {
      case '1':
        // Lógica del Aprendiz 1: Agregar contacto
        print('\n--- Agregar Nuevo Contacto ---');
        stdout.write('Ingrese el nombre: ');
        String? nombre = stdin.readLineSync();

        stdout.write('Ingrese el teléfono: ');
        String? telefono = stdin.readLineSync();

        if (nombre != null && nombre.isNotEmpty && telefono != null && telefono.isNotEmpty) {
          diary.add(Contact(nombre, telefono));
          print('¡Contacto agregado exitosamente!');
        } else {
          print('Error: El nombre y el teléfono no pueden estar vacíos.');
        }
        break;
      case '2':
        // TODO: Aprendiz 2 - Implementar lógica para listar
        break;
      case '3':
        // TODO: Aprendiz 3 - Implementar lógica para buscar
        print('\n--- Buscar Contacto ---');
        stdout.write('Ingrese el nombre del contacto a buscar: ');
        String? searchName = stdin.readLineSync();

        stdout.write('Ingrese el teléfono del contacto a buscar: ');
        String? searchPhone = stdin.readLineSync();

        if (searchName != null && searchName.isNotEmpty && searchPhone != null && searchPhone.isNotEmpty) {
          bool found = false;

          for (var contact in diary) {
            if (contact.name.toLowerCase() == searchName.toLowerCase() && contact.phone == searchPhone) {
              print('\nContacto encontrado: ${contact.name} \nTeléfono: ${contact.phone}');
              found = true;
              break; 
            }
          }

          if (!found) {
            print('\nContacto no encontrado.');
          }
        } else {
          print('Error: El nombre y el teléfono no pueden estar vacíos.');
        }
        break;
        
      case '4':
        // TODO: Aprendiz 3 - Implementar lógica para eliminar
        print('\n--- Eliminar Contacto ---');
        stdout.write('Ingrese el nombre del contacto a eliminar: ');
        String? deleteName = stdin.readLineSync();

        stdout.write('Ingrese el teléfono del contacto a eliminar: ');
        String? deletePhone = stdin.readLineSync();

        if (deleteName != null && deleteName.isNotEmpty && deletePhone != null && deletePhone.isNotEmpty) {
          int originalLength = diary.length;

          diary.removeWhere((contact) => 
            contact.name.toLowerCase() == deleteName.toLowerCase() && contact.phone == deletePhone
          );

          if (diary.length < originalLength) {
            print('¡Contacto eliminado exitosamente!');
          } else {
            print('No se encontró ningún contacto con esos datos para eliminar.');
          }
        } else {
          print('Error: El nombre y el teléfono no pueden estar vacíos.');
        }
        break;

      case '5':
        print('Saliendo de la agenda...');
        running = false;
        break;
      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}
