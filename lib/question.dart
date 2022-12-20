import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //this class created only write stl then click tab,
  final String questionText; //this is variable
  Question(
      this.questionText); //this store the questions coming from quize.dart file (line no. 20)

  @override
  Widget build(BuildContext context) {
    return Container(
      //in stateless widget , we use container to display on screen and in statefull
      //widget we use return MaterialApp then scafold
      width: double.infinity, //set width of questions on screen as infinity
      margin: EdgeInsets.all(5),
      child: Text(
        //this display the text on screen which have some another argument like textstyle and textalign
        questionText, //this is indirectly questions of main.dart file
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
