import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purple,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
        // onPressed: _answerQuestion(), It will lead to not returning of function as onPressed demands function as its value
      ),
    );
  }
}
