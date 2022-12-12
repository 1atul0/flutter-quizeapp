import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const ({super.key});
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = "you get ";
    resultText += resultScore.toString() + " out of 3";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text("Reset Quize!"),
            style: TextButton.styleFrom(foregroundColor: Colors.green),
          )
        ],
      ),
    );
  }
}
