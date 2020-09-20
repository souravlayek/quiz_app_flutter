import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var condition = true;
  int score = 0;
  final questions = [
    {
      'questionText': "what's your favourite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 15}
      ],
    },
    {
      'questionText': "what's your favourite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Lion', 'score': 15},
        {'text': 'Elephant', 'score': 10},
        {'text': 'Tiger', 'score': 5}
      ],
    }
  ];
  void _answerQuestion(data) {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex = questionIndex + 1;
      } else {
        condition = false;
      }
      score += data;
    });
  }

  void _restartQuiz() {
    setState(() {
      questionIndex = 0;
      score = 0;
      condition = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My first app"),
      ),
      body: condition
          ? Quiz(
              question: questions[questionIndex]['questionText'],
              answer: questions[questionIndex]['answers'],
              answerQuestion: _answerQuestion,
            )
          : Center(child: Result(score, _restartQuiz)),
    ));
  }
}
