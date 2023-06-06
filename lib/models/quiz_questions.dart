class QuizQuestions {
  QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final ShuffledList = List.of(answers);
    ShuffledList.shuffle();
    return ShuffledList;
  }
}
