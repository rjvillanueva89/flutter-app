import 'dart:math';

import 'package:first_app/src/widgets/button.dart';
import 'package:first_app/src/widgets/styled_text.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

final random = Random();

class _DiceState extends State<Dice> {
  int active = random.nextInt(6) + 1;

  void handlePress() {
    setState(() {
      active = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const StyledText("Roll the Dice!"),
          Image.asset(
            "assets/images/dice-$active.png",
            width: 200,
          ),
          const SizedBox(height: 20),
          Button(
            label: "ROLL",
            onPressed: handlePress,
          ),
        ],
      ),
    );
  }
}
