import 'package:first_app/src/widgets/gradient_container.dart';
import 'package:first_app/src/widgets/quiz/questions_screen.dart';
import 'package:first_app/src/widgets/quiz/result_screen.dart';
import 'package:first_app/src/widgets/quiz/start_screen.dart';
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

  // @override
  // void initState() {
  //   super.initState();
  //   active = "start-screen";
  // }

  void setScreen(String screen) {
    setState(() {
      active = screen;
    });
  }

  void onSelectAnswer(String answer) {
    answers.add(answer);
  }

  void resetQuiz() {
    setState(() {
      answers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    final screens = {
      "start-screen": StartScreen(onPressed: () {
        setScreen("questions-screen");
      }),
      "questions-screen": QuestionsScreen(
        onSelectAnswer: onSelectAnswer,
        onFinished: () {
          setScreen("result-screen");
        },
      ),
      "result-screen": ResultScreen(
          answers: answers,
          onReset: () {
            setScreen("start-screen");
            resetQuiz();
          }),
    };

    final activeScreen = screens[active];

    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(),
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
