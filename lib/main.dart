import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
    {
      'question':
          'The Centre for Cellular and Molecular Biology is situated at',
      'answers': [
        {'text': 'Patna', 'score': 0},
        {'text': 'Hyderabad', 'score': 10},
        {'text': 'Jaipur', 'score': 0},
        {'text': 'New Delhi', 'score': 0}
      ]
    },
    {
      'question': 'Where is the Railway Staff College located?',
      'answers': [
        {'text': 'Pune', 'score': 0},
        {'text': 'Allahabad', 'score': 0},
        {'text': 'Delhi', 'score': 0},
        {'text': 'Vadodara', 'score': 10}
      ]
    },
    {
      'question': 'The Indian Institute of Science is located at',
      'answers': [
        {'text': 'Bangalore', 'score': 10},
        {'text': 'Kerala', 'score': 0},
        {'text': 'New Delhi', 'score': 0},
        {'text': 'Madras', 'score': 0}
      ]
    },
    {
      'question': 'Which city is known as \'Electronic City of India\'?',
      'answers': [
        {'text': 'Bangalore', 'score': 10},
        {'text': 'Guragon', 'score': 0},
        {'text': 'Hyderabad', 'score': 0},
        {'text': 'Mumbai', 'score': 0}
      ]
    },
    {
      'question':
          'Where is the headquarters of Oil and Natural Gas Commission?',
      'answers': [
        {'text': 'Digboi', 'score': 0},
        {'text': 'Vadodara', 'score': 0},
        {'text': 'Dehradun', 'score': 10},
        {'text': 'Mumbai', 'score': 0}
      ]
    },
  ];

  void _answerQues(int score) {
    _totalScore += score;
    setState(() {
      // if (_questionIndex == 2)
      //   _questionIndex = 0;
      // else
      _questionIndex = _questionIndex + 1;
    });

    print("Click on answer index: " + _questionIndex.toString());
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQueCallback: _answerQues,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
