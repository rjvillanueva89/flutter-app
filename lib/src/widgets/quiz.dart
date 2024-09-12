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
  int active = 0;

  @override
  void initState() {
    super.initState();
    active = 0;
  }

  void handleNext() {
    setState(() {
      active = active + 1;
    });
  }

  void handlePrev() {
    setState(() {
      active = active - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget =
        active == 0 ? StartScreen(onNext: handleNext) : const QuestionsScreen();

    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [Colors.purple.shade900, Colors.purple.shade700],
          child: screenWidget,
        ),
      ),
    );
  }
}
