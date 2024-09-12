import 'package:first_app/src/widgets/gradient_container.dart';
import 'package:first_app/src/widgets/questions_screen.dart';
import 'package:first_app/src/widgets/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> answers = [];
  var active = "start-screen";

  @override
  void initState() {
    super.initState();
    active = "start-screen";
  }

  void showQuestionsScreen() {
    setState(() {
      active = "questions-screen";
    });
  }

  void showResultScreen() {
    setState(() {
      active = "result-screen";
    });
  }

  void handleSelectAnswer(String answer) {
    // answers = [...answers, answer];
    answers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    final screens = {
      "start-screen": StartScreen(onPressed: showQuestionsScreen),
      "questions-screen": QuestionsScreen(
        onSelectAnswer: handleSelectAnswer,
        onFinished: showResultScreen,
      ),
      "result-screen": const Text("Results"),
    };

    final screenWidget = screens[active];

    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(),
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
