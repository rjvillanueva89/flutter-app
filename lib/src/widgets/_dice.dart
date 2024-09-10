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
  var active = Random().nextInt(6);
  var dices = [
    "assets/images/dice-1.png",
    "assets/images/dice-2.png",
    "assets/images/dice-3.png",
    "assets/images/dice-4.png",
    "assets/images/dice-5.png",
    "assets/images/dice-6.png"
  ];

  void handlePress() {
    print("rolling");
    setState(() {
      active = Random().nextInt(6);
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
            dices[active],
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
