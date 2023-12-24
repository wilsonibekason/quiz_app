import "package:flutter/material.dart";

class QuestionState extends StatelessWidget {
  const QuestionState({super.key, required this.questionText});

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return  Text(questionText);
  }
}
