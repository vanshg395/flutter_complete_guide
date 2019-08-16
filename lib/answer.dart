import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(20),
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
