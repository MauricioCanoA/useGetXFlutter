import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_getx/controllers/calculator_controller.dart';
import 'package:manejo_getx/ui/calculator/widgets/separator.dart';

class Results extends StatelessWidget {
  final controller = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(children: [
          _buildLabel(text: controller.firstNumber.value),
          _buildLabel(text: controller.operation.value),
          _buildLabel(text: controller.secondNumber.value),
          Separator(),
          _buildResult(result: controller.result.value),
        ]));
  }

  Widget _buildLabel({required String text}) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(text, style: TextStyle(fontSize: 30)),
    );
  }

  Widget _buildResult({String? result}) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(result ?? '', style: TextStyle(fontSize: 50)),
    );
  }
}
