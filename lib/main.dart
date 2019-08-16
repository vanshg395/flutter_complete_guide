import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var quesIndex = 0;
  var totalScore = 0;

  final questions = const [
    {
      "quesText": "What is your favourite colour?",
      "answers": [
        {"text": "Black", "score": 1},
        {"text": "Blue", "score": 8},
        {"text": "Red", "score": 6},
        {"text": "Green", "score": 9}
      ],
    },
    {
      "quesText": "What is your favourite animal?",
      "answers": [
        {"text": "Dog", "score": 9},
        {"text": "Cat", "score": 4},
        {"text": "Rabbit", "score": 6},
        {"text": "Kangaroo", "score": 7}
      ],
    },
    {
      "quesText": "What is your favourite incstructor?",
      "answers": [
        {"text": "Tanishk", "score": 10},
        {"text": "Sureshkumar", "score": 5},
        {"text": "Jai", "score": 9}
      ],
    },
  ];

  void resetQuiz() {
    setState(() {
      quesIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      quesIndex = quesIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: quesIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                quesIndex: quesIndex, 
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
