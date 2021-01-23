import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

/// Точка входа, запускаем наш главный Виджет MyApp
void main() => runApp(MyApp());


/// Наследуемся от виджета со стейтом, для ререндера при изменении внутренних данных
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}



class _MyAppState extends State<MyApp>{

  // List<Map<String, Map>>
  final _questions = const [
    {
      'questionText': 'Какой цвет белья на девушках мне больше всего нравится?',
      'answers': [
        {'text': 'Белый', 'score': 10},
        {'text': 'Черный', 'score': 7},
        {'text': 'Розовый', 'score': 1},
        {'text': 'Телесный', 'score': 3},
      ],
    },
    {
      'questionText': 'Какой алкоголь я больше всего люблю?',
      'answers': [
        {'text': 'Пиво', 'score': 4},
        {'text': 'Водку', 'score': 1},
        {'text': 'Виски', 'score': 10},
        {'text': 'Никакой', 'score': 6},
      ],
    },
    {
      'questionText': 'В какую игру я чаще всего играл в 2020',
      'answers': [
        {'text': 'Diablo 3', 'score': 1},
        {'text': 'Apex Legends', 'score': 10},
        {'text': 'StarWars: Old Republic', 'score': 1},
        {'text': 'Гонял лысого', 'score': 20},
      ],
    },
    {
      'questionText': 'Что я подарил жене на НГ 2020/21',
      'answers': [
        {'text': 'Себя', 'score': 0},
        {'text': 'Портмане', 'score': 10},
        {'text': 'Набор круженого белья и духи', 'score': 3},
        {'text': 'Ужин с заказом еды из ресторана', 'score': 6},
      ],
    },
    {
      'questionText': 'Как я чаще всего называю сына',
      'answers': [
        {'text': 'Личинус', 'score': 3},
        {'text': 'Спиногрыз', 'score': 1},
        {'text': 'Бусик', 'score': 9},
        {'text': 'Барсета', 'score': 10},
      ],
    },
    {
      'questionText': 'Как я хотел назвать сына',
      'answers': [
        {'text': 'Адам', 'score': 5},
        {'text': 'Алексей', 'score': 3},
        {'text': 'Адольф', 'score': 10},
        {'text': 'Аркадий', 'score': 1},
      ],
    },
    {
      'questionText': 'В какую игру мы играли дольше всего',
      'answers': [
        {'text': 'Apex Legend', 'score': 8},
        {'text': 'WOW', 'score': 10},
        {'text': 'Battlefield', 'score': 3},
        {'text': 'Monster Hunter', 'score': 1},
      ],
    },
    {
      'questionText': 'Куда мы ходили посреди ночи, бухая на съемной хате',
      'answers': [
        {'text': 'За куревом', 'score': 1},
        {'text': 'За бухлом', 'score': 5},
        {'text': 'За девками', 'score': 8},
        {'text': 'За дошиком', 'score': 10},
      ],
    },
    {
      'questionText': 'Что чаще всего мы делали на съмной хате',
      'answers': [
        {'text': 'Смотрели порно', 'score': 1},
        {'text': 'Тусовались', 'score': 10},
        {'text': 'Бухали', 'score': 8},
        {'text': 'Курили кальян', 'score': 7},
      ],
    },
    {
      'questionText': 'Больше всего мы угорали над сериалом',
      'answers': [
        {'text': 'Друзья', 'score': 3},
        {'text': 'Клиника', 'score': 6},
        {'text': 'Как я встретил вашу маму', 'score': 10},
        {'text': 'Отбросы', 'score': 8},
      ],
    },
  ];


  var _questionIndex = 0;
  var _totalScore = 0;


  // Функция для сброса статистики и индекса текущего вопроса (ререндерим приложуху)
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // Функция ответа
  void _answerQuiz(int score) {

    _totalScore += score;

    // Ререндерим вопрос
    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      print('остались еще вопросы');
    }
    else {
      print('вопросов больше нет');
    }

  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ответь на вопросы, Максим и получи 100р на мобилу!'),
        ),
        body: _questionIndex < _questions.length ? Quiz(
          answerQuiz: _answerQuiz,
          questionIndex: _questionIndex,
          questions: _questions,
        ) :
        Result(_totalScore, _resetQuiz)
        ,
      )
    );

  }



}


