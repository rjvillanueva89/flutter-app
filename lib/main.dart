import 'package:first_app/src/widgets/_button.dart';
import 'package:first_app/src/widgets/gradient_container.dart';
import 'package:first_app/src/widgets/styled_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: GradientContainer(
          gradientColors: const [Colors.green, Colors.blue],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const StyledText("Roll the Dice!"),
                Image.asset(
                  "assets/images/dice-6.png",
                  width: 200,
                ),
                Button(
                  label: "ROLL",
                  onPressed: () {
                    print('Button pressed from App!');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
