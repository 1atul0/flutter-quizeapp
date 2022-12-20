// _MyAppState is public
// but _MyAppState is private
//private things is only accessible in that file where it is created
//Question is widget written in another dart file
import 'package:flutter/material.dart'; //this is package which must be used in every dart project
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
  //these are the qustions and options for your quizeapp
  /* these questions have four multiple choice and right answer got score 1 marks and 
  remaining options got 0 score*/
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
  var _questionIndex = 0; //this is index of your questions
  var _totalScore = 0; //this calculate your score of after completing quize
  void resetQuiz() {
    //this functions is come when you complete quize and gave him a reset
    setState(() {
      //buttom on downward side
      _questionIndex =
          0; //on quize reset then score and index must be initialized to 0
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // if (_questionIndex < _questions.length) ;
    //when you answer the questions then your score updated using this.
    _totalScore += score;
    setState(() {
      //this helps in to goto next questions when you hit the any of choice
      _questionIndex = _questionIndex + 1;
    });

    print(
        _questionIndex); //this not seeing in apps this is backgroud seen in the computer terminal when you run your
    //project on debug mode
    // print('Answer chosen');
  }

  @override //it override the build class to your featuring attributes
  Widget build(BuildContext Context) {
    //you are using the override widget of build class
    return MaterialApp(
      //every statefull widget class should return MaterialApp
      home: Scaffold(
        appBar: AppBar(
          title: Text("Today Quize!"), //this is appbar title
        ),
        body: _questionIndex <
                _questions
                    .length //this is condition checking if you complete this quize then you show the result,totalscore (line no. 92)
            ? Quiz(
                //this is another dart file which is used to display another question which takes arguments as answerQuestion,questionIndex,questions
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
