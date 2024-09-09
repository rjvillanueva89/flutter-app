import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.onPress, this.label = "Click"});

  final VoidCallback? onPress;
  final String label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      child: Text(label),
    );
  }
}
