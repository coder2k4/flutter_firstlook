import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuiz;

  Quiz({this.questions, this.questionIndex, this.answerQuiz});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuiz(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }


}
