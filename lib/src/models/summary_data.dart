class SummaryData {
  const SummaryData({
    required this.index,
    required this.question,
    required this.correctAnswers,
    required this.userAnswer,
  });

  final int index;
  final String question;
  final String correctAnswers;
  final String userAnswer;
}
