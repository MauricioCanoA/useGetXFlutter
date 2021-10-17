import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  final counter = 0.obs;

  void increment() {
    if (counter.value >= 10) {
      counter.value = 0;
      return;
    }
    counter.value++;
  }
}
