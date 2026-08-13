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
      // Lógica para Aprendiz 2: Listar contactos
      print('\n--- LISTA DE CONTACTOS ---');
      if (diary.isEmpty) {
        print('No hay contactos registrados.');
      } else {
        for (var i = 0; i < diary.length; i++) {
          print('${i + 1}. Nombre: ${diary[i].name} - Teléfono: ${diary[i].phone}');
        }
      }
      break;
      case '3':
        // TODO: Aprendiz 3 - Implementar lógica para buscar
        break;
      case '4':
        // TODO: Aprendiz 3 - Implementar lógica para eliminar
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
