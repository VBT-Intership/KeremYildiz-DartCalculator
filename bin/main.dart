import '../lib/calculator.dart';

import 'dart:io';

void main() {
  var myCalculator = Calculator();
  while (true) {
    myCalculator.showMenu();

    myCalculator.setChoice = getOperationFromConsole();
    myCalculator.setNum1 = getNumberFromConsole();
    myCalculator.setNum2 = getNumberFromConsole();

    myCalculator.makeProcess();

    myCalculator.printResult();
  }
}

double getNumberFromConsole() {
  print('Number: ');
  return double.parse(stdin.readLineSync());
}

int getOperationFromConsole() {
  print('Choice:');
  int choice = int.parse(stdin.readLineSync());
  return (choice != 5)
      ? choice
      : exit(0); // 5 for exit, make this process by using enum later
}
