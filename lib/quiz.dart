import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final question, answerQuestion, answer;
  Quiz({this.question, this.answerQuestion, this.answer});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...(answer as List<Map>).map((e) => Answer(e, answerQuestion)).toList()
      ],
    );
  }
}
