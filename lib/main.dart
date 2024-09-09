import 'package:first_app/src/components/_button.dart';
import 'package:first_app/src/components/gradient_container.dart';
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
        ),
      ),
    );
  }
}
