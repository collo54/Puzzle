// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NeuSquareButton extends StatelessWidget {
  final child;
  final function;
  final onTap;
  String? string;
  bool isButtonpressed;

  NeuSquareButton(
      {Key? key,
      this.onTap,
      this.child,
      this.string,
      this.function,
      required this.isButtonpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 75,
          height: 75,
          child: Center(
            child: isButtonpressed
                ? const Icon(
                    Icons.thumb_down_alt_rounded,
                    color: Colors.red,
                  )
                : const Icon(
                    Icons.thumb_up_off_alt_rounded,
                    color: Colors.green,
                  ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[300],
              boxShadow: isButtonpressed
                  ? []
                  : [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                    ]),
        ),
      ),
    );
  }
}
