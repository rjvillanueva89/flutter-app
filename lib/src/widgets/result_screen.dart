import 'package:first_app/src/data/questions.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.answers, required this.onReset});

  final List<String> answers;
  final VoidCallback onReset;
  final questionsCount = questions.length;

  @override
  Widget build(BuildContext context) {
    final list = questions.map((question) {
      var index = questions.indexOf(question);
      var label = Container(
        decoration: BoxDecoration(
          color: Colors.purple.shade700,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
        ),
        height: 50,
        width: 50,
        child: Center(
          child: Text(
            (index + 1).toString(),
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      );
      var content = const SizedBox();

      return Row(
        children: [label, const SizedBox(width: 20), content],
      );
    }).toList();

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
          ...list,
          TextButton(
            onPressed: onReset,
            child: const Text("Reset"),
          )
        ],
      ),
    );
  }
}
