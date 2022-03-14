import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  late final click;
  String text;

  GridButton(this.text, this.click, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed: click,
    );
  }
}
