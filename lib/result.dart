import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function resetHandler;

  Result(this.total, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (total >= 24) {
      resultText = "You are awesome.";
    } else if (total > 15) {
      resultText = "You can be better.";
    } else {
      resultText = "Go to hell.";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase + "$total",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center),
          FlatButton(
            child: Text(
              "Restart Quiz!",
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
