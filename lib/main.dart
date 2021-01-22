import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State {
  var qIndex = 0;

  void answerQuestion() {

    setState(() {
      qIndex += 1;
    });


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
          title: Text('QUIZZZZ'),
        ),
        body: Column(
          children: [
            Text(questions[qIndex]),
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