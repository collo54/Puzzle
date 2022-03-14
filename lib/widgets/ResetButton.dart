import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  late final reset;
  String text;

  ResetButton(this.reset, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: reset,
      //child: Colors.white,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      child: const Text("Reset"),
    );
  }
}
