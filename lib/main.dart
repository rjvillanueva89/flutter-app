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
          body: Center(
              child: ButtonWidget(
            label: "Click Me",
            onPress: () {
              print('Button pressed from App!');
            },
            // Or you can omit the onPress parameter entirely
          )),
        ));
  }
}

class ButtonWidget extends StatelessWidget {
  final VoidCallback? onPress;
  final String label;

  const ButtonWidget({super.key, this.onPress, this.label = "Click"});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      child: Text(label),
    );
  }
}
