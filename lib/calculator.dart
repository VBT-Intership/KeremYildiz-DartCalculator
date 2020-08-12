class Calculator {
  double _num1;
  double _num2;
  int _choice;
  double _result;

  Calculator() {} // No need to

  void showMenu() {
    print("**********************************************");
    print("  Welcome to the Calculator 1.0  ");
    print(
        "   1-Addition\n   2-Sub\n   3-Multiply  \n   4-Division\n   5-Exit\n");
    print("**********************************************");
  }

  void set setNum1(double num1) => this._num1 = num1;
  void set setNum2(double num2) => this._num2 = num2;
  void set setChoice(int choice) => this._choice = choice;
  double get getResult => _result;

  void makeProcess() {
    switch (_choice) {
      case 1:
        {
          _result = opAdd();
        }
        break;

      case 2:
        {
          _result = opSub();
        }
        break;

      case 3:
        {
          _result = opMultiply();
        }
        break;

      case 4:
        {
          _result = opDivision();
        }
        break;

      default:
        {
          print("Invalid choice !");
        }
        break;
    }
  }

  double opAdd() => _num1 + _num2;
  double opSub() => _num1 - _num2;
  double opMultiply() => _num1 * _num2;
  double opDivision() => _num1 / _num2;

  void printResult() => print("Result : $_result");
}
