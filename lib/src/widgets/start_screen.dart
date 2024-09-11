import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(180, 255, 255, 255),
          ),
          const SizedBox(height: 40),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple.shade700,
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            onPressed: onPressed,
            icon: const Icon(Icons.arrow_right_alt_sharp),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
