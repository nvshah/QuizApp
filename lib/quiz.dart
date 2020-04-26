import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  // It's mandatory to initialize final/const variable before used in code
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Here input data to Question changes i.e its parameter and so as it is stateless widget its get rebuild
        // here its automatically calls the build() method in Question widget.
        Question(
          questions[questionIndex]['questionText'],
        ),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        //Here We create button for every answer option by using Answer widget & we need to pass ref of buttonclick handler function define over here
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
