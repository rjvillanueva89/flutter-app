import 'package:first_app/src/data/questions.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.answers, required this.onReset});

  final List<String> answers;
  final VoidCallback onReset;
  final questionsCount = questions.length;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answers.length; i++) {
      summary.add({
        'index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': answers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final list = getSummaryData();

    print(list);

    return Container(
      margin: const EdgeInsets.all(40),
      width: double.infinity,
      // decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "You answered X out of Y questions correctly!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(200, 255, 255, 255),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: onReset,
            child: const Text(
              "Reset",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
