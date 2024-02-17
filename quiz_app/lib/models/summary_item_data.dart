class SummaryItemData {
  const SummaryItemData(
    this.questionIdentifier,
    this.question,
    this.userAnswer,
    this.correctAnswer
  );

  final int questionIdentifier;
  final String question;
  final String userAnswer;
  final String correctAnswer;

  bool get isCorrectAnswer => userAnswer == correctAnswer;
}
