import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQues() {
    setState(() {
      if (_questionIndex == 2)
        _questionIndex = 0;
      else
        _questionIndex = _questionIndex + 1;
    });

    print("Click on answer index: " + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'what\'s your favorite Color?',
        'answers': ['Red', 'Green', 'Blue', 'White']
      },
      {
        'question': 'what\'s your favorite Hobbies?',
        'answers': ['Development', 'Debug', 'Testing']
      },
      {
        'question': 'would you like to learn more?',
        'answers': ['Yes', 'No']
      },
    ];

    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['question'].toString()),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQues, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
