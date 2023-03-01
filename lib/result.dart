import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 40) {
      resultText = 'You are awesome!';
    } else if (resultScore >= 30) {
      resultText = 'Pretty likeable!';
    } else if (resultScore >= 20) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase + " \n Score: " + resultScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
