import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color bgColor;
  final bool big;
  final String text;
  final Function onPressed;
  CalculatorButton({
    this.big = false,
    this.bgColor = const Color(0xff333333),
    required this.text,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, right: 5, left: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: this.bgColor,
          primary: Colors.white,
          shape: StadiumBorder(),
        ),
        child: Container(
          width: this.big ? 140 : 58,
          height: 25,
          child: Center(
            child: Text(
              this.text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        onPressed: () => this.onPressed(),
      ),
    );
  }
}
