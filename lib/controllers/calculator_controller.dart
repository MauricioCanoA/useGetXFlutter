import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final result = "0".obs;
  final firstNumber = "0".obs;
  final secondNumber = "0".obs;
  final operation = "0".obs;

  void reset() {
    firstNumber.value = "0";
    result.value = "0";
    secondNumber.value = "0";
    operation.value = "+";
  }

  void calculate() {
    final double num1 = double.parse(firstNumber.value);
    final double num2 = double.parse(result.value);

    switch (operation.value) {
      case '+':
        result.value = '${num1 + num2}';
        break;
      case '-':
        result.value = '${num1 - num2}';
        break;
      case '/':
        result.value = '${num1 / num2}';
        break;
      case 'x':
        result.value = '${num1 * num2}';
        break;
    }
    secondNumber.value = result.value;
  }

  void toggleNegative() {
    result.value = result.value.contains('-')
        ? result.value.replaceFirst('-', '')
        : '-' + result.value;
  }

  void setOperation(String op) {
    firstNumber.value = result.value;
    result.value = "0";
    operation.value = op;
    secondNumber.value = "0";
  }

  void addNumber(String number) {
    result.value = result.value == "0" ? number : result.value + number;
  }

  void deleteNumber() {
    result.value = result.value.length > 1
        ? result.value.substring(0, result.value.length - 1)
        : "0";
  }
}
