//this is final file of your project which shows the result and restart process of your app
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const ({super.key});
  final int
      resultScore; //this variable is created for storing the result of your score
  final VoidCallback
      resetHandler; //this is pointer to function which is created for storing the restart function of main.dart
  Result(this.resultScore,
      this.resetHandler); //Result is constructor here which takes result and restart function as argument
  String get resultPhrase {
    //this is created for showing result in text form
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
            resultPhrase, //result is showing on screen
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed:
                resetHandler, //when you press Reset Quize! then resetHandler pointer simply call the resetQuize function from main.dart file and you reach the home
            //of app
            child: Text("Reset Quize!"),
            style: TextButton.styleFrom(foregroundColor: Colors.green),
          )
        ],
      ),
    );
  }
}
