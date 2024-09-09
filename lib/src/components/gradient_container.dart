import 'package:flutter/material.dart';

class GradientContainer extends Container {
  GradientContainer({
    super.key,
    super.child,
  });

  static const background = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.green,
        Colors.blue,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: background,
      child: child,
    );
  }
}
