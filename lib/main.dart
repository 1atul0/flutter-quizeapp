// _MyAppState is public
// but _MyAppState is private
//private things is only accessible in that file where it is created
//Question is widget written in another dart file
import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = ++_questionIndex;
    });

    print(_questionIndex);
    // print('Answer chosen');
  }

  @override
  Widget build(BuildContext Context) {
    var questions = [
      'what is your favorite Color?',
      'what\'s your favorite animaal?',
      'what is your favorite book?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My app"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
                child: Text("Answer 2"),
                onPressed: () => print("Answer 2 chosen!")),
            ElevatedButton(
                child: Text("Answer 3"),
                onPressed: () {
                  //this is anonymous function
                  print("Answer 3 chosen!");
                }),
          ],
        ),
      ),
    );
  }
}
