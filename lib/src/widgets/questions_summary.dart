import 'package:first_app/src/models/summary_data.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<SummaryData> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              ((data.index) + 1).toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    data.question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data.correctAnswers,
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    data.userAnswer,
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
