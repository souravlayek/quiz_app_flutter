import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var score, restart;
  Result(this.score, this.restart);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "get out you have scored $score",
        style: TextStyle(
            fontSize: 32, fontStyle: FontStyle.italic, color: Colors.blue),
      ),
      FlatButton(
        child: Text("Restart Quiz"),
        onPressed: restart,
      )
    ]);
  }
}
