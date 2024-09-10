import 'dart:math';

import 'package:first_app/src/widgets/_button.dart';
import 'package:first_app/src/widgets/styled_text.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {
  var active = Random().nextInt(6) + 1;

  void handlePress() {
    setState(() {
      active = Random().nextInt(6) + 1;
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
          Button(
            label: "ROLL",
            onPressed: handlePress,
          ),
        ],
      ),
    );
  }
}
