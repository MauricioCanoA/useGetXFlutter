import 'package:flutter/material.dart';
import 'package:manejo_getx/routes.dart';
import 'package:manejo_getx/ui/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.HOME,
      routes: {
        Routes.HOME: (context) => HomePage(),
      },
    );
  }
}
