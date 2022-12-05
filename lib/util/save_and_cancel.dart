import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.white,
      elevation: 0,
      child: Text(text,
      style: const TextStyle(
        color: Colors.blueGrey,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}
