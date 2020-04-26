import 'package:flutter/material.dart';

//class is used to wrap up questions , act as seperate widget container for question
class Question extends StatelessWidget {
  //passed from outside
  //since it is stateless widget , it is good to make its properties final
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
