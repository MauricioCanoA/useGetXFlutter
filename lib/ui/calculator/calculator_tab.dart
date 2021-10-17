import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_getx/controllers/calculator_controller.dart';
import 'package:manejo_getx/ui/calculator/widgets/calculator_button.dart';
import 'package:manejo_getx/ui/calculator/widgets/results.dart';

class CalculatorTab extends StatelessWidget {
  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Column(
          children: [
            Results(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                    text: 'AC',
                    onPressed: () => controller.reset(),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '+/-',
                    onPressed: () => controller.toggleNegative(),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: 'del',
                    onPressed: () => controller.deleteNumber(),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '/',
                    onPressed: () => controller.setOperation("/"),
                    bgColor: Color(0xffa5a5a5)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                    text: '7',
                    onPressed: () => controller.addNumber("7"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '8',
                    onPressed: () => controller.addNumber("8"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '9',
                    onPressed: () => controller.addNumber("9"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: 'x',
                    onPressed: () => controller.setOperation("x"),
                    bgColor: Color(0xffa5a5a5)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                    text: '4',
                    onPressed: () => controller.addNumber("4"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '5',
                    onPressed: () => controller.addNumber("5"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '6',
                    onPressed: () => controller.addNumber("6"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '-',
                    onPressed: () => controller.setOperation("-"),
                    bgColor: Color(0xffa5a5a5)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                    text: '1',
                    onPressed: () => controller.addNumber("1"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '2',
                    onPressed: () => controller.addNumber("2"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '3',
                    onPressed: () => controller.addNumber("3"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '+',
                    onPressed: () => controller.setOperation("+"),
                    bgColor: Color(0xffa5a5a5)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                    text: '0',
                    big: true,
                    onPressed: () => controller.addNumber("0"),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '.',
                    onPressed: () => controller.addNumber("."),
                    bgColor: Color(0xffa5a5a5)),
                CalculatorButton(
                    text: '=',
                    onPressed: () => controller.calculate(),
                    bgColor: Color(0xffa5a5a5)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
