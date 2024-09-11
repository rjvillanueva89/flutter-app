import 'package:first_app/src/widgets/gradient_container.dart';
import 'package:first_app/src/widgets/questions_screen.dart';
import 'package:first_app/src/widgets/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(onPressed: switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

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
          child: activeScreen,
        ),
      ),
    );
  }
}
