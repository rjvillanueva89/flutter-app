import 'package:first_app/src/data/questions.dart';
import 'package:first_app/src/models/summary_data.dart';
import 'package:first_app/src/widgets/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.answers, required this.onReset});

  final List<String> answers;
  final VoidCallback onReset;
  final questionsCount = questions.length;

  List<SummaryData> getSummaryData() {
    final List<SummaryData> summary = [];

    for (var i = 0; i < answers.length; i++) {
      summary.add(SummaryData(
        index: i,
        question: questions[i].text,
        correctAnswers: questions[i].answers[0],
        userAnswer: answers[i],
      ));
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final totalCorrectAnswers = summaryData
        .where((data) => data.correctAnswers == data.userAnswer)
        .length;

    return Container(
      margin: const EdgeInsets.all(40),
      width: double.infinity,
      // decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You answered $totalCorrectAnswers out of $totalQuestions questions correctly!",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(200, 255, 255, 255),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          QuestionsSummary(summaryData),
          TextButton.icon(
            onPressed: onReset,
            icon: const Icon(
              Icons.restart_alt,
              color: Colors.white,
            ),
            label: const Text(
              "Reset",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
