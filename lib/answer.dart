import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final answer;
  Answer(this.answer, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer['text']),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () => selectHandler(answer['score']),
      ),
    );
  }
}
