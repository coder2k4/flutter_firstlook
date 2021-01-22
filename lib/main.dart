import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  var qIndex = 0;

  void answerQuestion() {
    qIndex += 1;

    if (qIndex > 3) qIndex = 0;
    print(qIndex);
  }

  var questions = [
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(questions[qIndex]),
        ),
        body: Column(
          children: [
            Text('The question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
