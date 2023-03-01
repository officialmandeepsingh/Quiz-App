import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  //_answerQue: _answerQues,
// _questionIndex: _questionIndex,
// _questions: _questions,
  final List<Map<String, Object>> questions;
  int questionIndex;
  Function answerQueCallback;

  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQueCallback});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQueCallback(answer['score']),
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
