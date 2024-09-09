import 'package:first_app/src/components/_button.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              label: "Click Me",
              onPress: () {
                print('Button pressed from App!');
              },
              // Or you can omit the onPress parameter entirely
            ),
            const Text(
              "Some text",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
