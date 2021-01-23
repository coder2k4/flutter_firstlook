import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 50 && totalScore >= 30) {
      resultText = 'Максон, КЛАКСОН!!! ЭТО ПРОВАААААЛЛЛЛ ВАЛЕРААА!!!!!!!!';
    } else if (totalScore <= 75) {
      resultText = 'Чет ты подзабыл многое! Но еще не все ))';
    } else if (totalScore <= 80) {
      resultText = 'Нормальный результат ))) Попробуем еще раз?';
    } else if (totalScore <= 99) {
      resultText = 'Это было очень круто, совсем чуточку нехватило!';
    } else if (totalScore == 100) {
      resultText =
          'ВАУ!!!! ТЫ ЭТО СДЕЛАЛ! Чтобы получить на мобильный деньги, отправь на номер 900 сообщение с цифрой 100';
    } else {
      resultText = 'О боже... ты точно не МАКС!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Перезапускаем!!!!'),
            textColor: Colors.redAccent,
          )
        ],
      ),
    );
  }
}
