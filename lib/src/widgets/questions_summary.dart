import 'package:first_app/src/models/summary_data.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<SummaryData> summaryData;

  @override
  Widget build(BuildContext context) {
    return _SizedBoxWithScrollView(
      Column(
        children: summaryData.map((data) {
          bool isCorrect = data.correctAnswers == data.userAnswer;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SummaryNumber(
                  number: (data.index + 1).toString(),
                  isCorrect: isCorrect,
                ),
                const SizedBox(width: 20),
                _SummaryItem(data)
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _SizedBoxWithScrollView extends StatelessWidget {
  const _SizedBoxWithScrollView(this.child);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(child: child),
    );
  }
}

class _SummaryNumber extends StatelessWidget {
  const _SummaryNumber({
    required this.number,
    required this.isCorrect,
  });

  final String number;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCorrect ? Colors.green.shade700 : Colors.red.shade900,
        shape: BoxShape.circle,
      ),
      height: 40,
      width: 40,
      alignment: Alignment.center,
      child: Text(
        number,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  const _SummaryItem(this.data);

  final SummaryData data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            textAlign: TextAlign.left,
          ),
          Text(
            data.userAnswer,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
