import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.onPressed, this.label = "Click"});

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
