import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './main.dart';

class Quiz extends StatelessWidget {
  // const Quiz({super.key});
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"].toString()),
        for (var answer in (questions[questionIndex]['answers']
            as List<Map<String, Object>>))
          {
            Answer(
                () => answerQuestion(answer["score"]), answer["text"] as String)
          }.single,
      ],
    );
  }
}
