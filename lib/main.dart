import 'package:flutter/material.dart';
// ./ is for ralative import i.e look in same folder
import './quiz.dart';
import './result.dart';
// void main(){
//   runApp(MyCoolApp());
// }

// Single Expression on rhs  {lambda function}
void main() => runApp(MyCoolApp());

//need to create widget to hold app
class MyCoolApp extends StatefulWidget {
  //class wide variable property
  @override
  State<StatefulWidget> createState() => _MyCoolAppState();
}

// _ here makes public to private class
// can't be use anywhere else except main.dart
class _MyCoolAppState extends State<MyCoolApp> {
  //map instead of list  // alternative to static const
  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite movie?',
      'answers': [
        {'text': '3 idiots', 'score': 1},
        {'text': 'super 30', 'score': 1},
        {'text': 'war', 'score': 1},
        {'text': 'deadpool', 'score': 1},
      ],
    },
  ];
  //private property
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We've more questions !");
    } else {
      print('No more questions !');
    }
  }

  void _resetQuiz(){
    setState(() {
      _totalScore = _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
