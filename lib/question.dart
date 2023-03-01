import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Text(
          questionText,
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ));
  }
}
