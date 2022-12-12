// _MyAppState is public
// but _MyAppState is private
//private things is only accessible in that file where it is created
//Question is widget written in another dart file
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      "questionText": "who is the prime minister of India?",
      "answers": [
        {"text": "Amit shah", "score": 0},
        {"text": "Narendra Singh Modi", "score": 1},
        {"text": "Manmohan Singh", "score": 0},
        {"text": "vainkya Naidu", "score": 0}
      ]
    },
    {
      "questionText": "who provides light to you?",
      "answers": [
        {"text": "sun", "score": 1},
        {'text': "Moon", "score": 0},
        {"text": "Earth", "score": 0},
        {"text": "Jupiter", "score": 0}
      ]
    },
    {
      "questionText": "how many season are present in India",
      "answers": [
        {"text": "3", "score": 0},
        {"text": "4", "score": 0},
        {"text": "5", "score": 0},
        {"text": "6", "score": 1}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) ;
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    // print('Answer chosen');
  }

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Today Quize!"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
