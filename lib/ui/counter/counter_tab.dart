import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_getx/controllers/counter_controller.dart';

class CounterTab extends StatelessWidget {
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Obx(() => Text('Contador: ${controller.counter.value}')),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => controller.increment(),
              child: Icon(Icons.plus_one)),
          SizedBox(width: 20),
          ElevatedButton(
              onPressed: () => controller.counter.value--,
              child: Icon(Icons.exposure_minus_1))
        ],
      ),
    ]));
  }
}
