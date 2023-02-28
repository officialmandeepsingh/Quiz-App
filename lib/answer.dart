import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answerText),
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
        ));
  }
}
