import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = ++questionIndex;
    });

    print(questionIndex);
    // print('Answer chosen');
  }

  @override
  Widget build(BuildContext Context) {
    var questions = [
      'what is your favorite Color?',
      'what\'s your favorite animaal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My app"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(child: Text("Answer 1"), onPressed: answerQuestion),
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
