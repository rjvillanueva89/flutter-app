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
                Button(
                  label: "Click Me Updated",
                  onPress: () {
                    print('Button pressed from App!');
                  },
                ),
                const StyledText("Hello World!")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
