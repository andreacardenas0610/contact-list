import 'dart:io';

class employee {
  String name;
  int hours;
  double salaryHour;

  employee({required this.name, required this.hours, required this.salaryHour});
}
void main() {
  stdout.write('\nIngrese el nombre del empleado: ');
  String? name = stdin.readLineSync()?? 'Nombre no ingresado';

  if (name.trim().isEmpty) {
    print('No se ingreso un nombre alguno\n');
    return;
  }

  stdout.write('Ingrese las horas laboradas en el mes: ');
  String? hourMonth = stdin.readLineSync()?? 'Horas no ingresadas';

  if (hourMonth.trim().isEmpty) {
    print('No se ingreso un valor valido\n');
    return;
  }
  int hours = int.tryParse(hourMonth) ?? 0;

  stdout.write('Ingrese el salario por hora: ');
  String? salary = stdin.readLineSync()?? 'Salario no ingresado';

  if (salary.trim().isEmpty) {
    print('No se ingreso un valor valido\n');
    return;
  }
  double salaryHour = double.tryParse(salary) ?? 0;

  employee emp = employee(name: name, hours: hours, salaryHour: salaryHour);
  print('El empleado ${emp.name} laboró ${emp.hours} horas este mes y su salario es de ${emp.salaryHour * emp.hours} pesos.');
}