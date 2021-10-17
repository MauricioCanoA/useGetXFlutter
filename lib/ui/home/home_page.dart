import 'package:flutter/material.dart';
import 'package:manejo_getx/ui/calculator/calculator_tab.dart';
import 'package:manejo_getx/ui/counter/counter_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manejo de Estado con GetX'),
      ),
      body: PageView(
        children: [
          CounterTab(),
          CalculatorTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.copyright_outlined), label: 'Contador'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: 'Calculadora')
        ],
      ),
    );
  }
}
