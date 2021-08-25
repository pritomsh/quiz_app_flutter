import 'package:flutter/material.dart';
import 'question.dart';
import './result.dart';
import 'answer.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _chosen = 0;
  static const _question = [
    {
      'questionText': 'Whats your facorite color ?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'How are you ?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'How are you ?',
      'answer': ['Black', 'fuck', 'Green', 'White'],
    },
  ];

  void _answerQuestion() {
    if (_chosen < _question.length) {
      setState(() {
        _chosen = _chosen + 1;
      });
      print(_chosen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _chosen < _question.length
            ? Column(
                children: <Widget>[
                  Question(
                    _question[_chosen]['questionText']?.toString() ?? '',
                  ),
                  ...(_question[_chosen]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Result(),
      ),
    );
  }
}
