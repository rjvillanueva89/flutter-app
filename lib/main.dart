import 'package:first_app/src/widgets/_quiz.dart';
import 'package:first_app/src/widgets/gradient_container.dart';
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
          gradientColors: [Colors.purple.shade900, Colors.purple.shade700],
          child: const Quiz(),
        ),
      ),
    );
  }
}
