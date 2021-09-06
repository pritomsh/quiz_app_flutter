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
  final _question = const [
    {
      'question': 'How long is New Zealand’s Ninety Mile Beach?',
      'answers': [
        '88km, so 55 miles long.',
        '55km, so 34 miles long.',
        '90km, so 56 miles long.',
      ],
    },
    {
      'question':
          'In which month does the German festival of Oktoberfest mostly take place?',
      'answers': [
        'January',
        'October',
        'September',
      ],
    },
    {
      'question': 'Who composed the music for Sonic the Hedgehog 3?',
      'answers': [
        'Britney Spears',
        'Timbaland',
        'Michael Jackson',
      ],
    },
    {
      'question':
          'In Georgia (the state), it’s illegal to eat what with a fork?',
      'answers': [
        'Hamburgers',
        'Fried chicken',
        'Pizza',
      ]
    },
    {
      'question':
          'Which part of his body did musician Gene Simmons from Kiss insure for one million dollars?',
      'answers': [
        'His tongue',
        'His leg',
        'His butt',
      ],
    },
    {
      'question': 'In which country are Panama hats made?',
      'answers': [
        'Ecuador',
        'Panama ',
        'Portugal',
      ],
    },
    {
      'question': 'From which country do French fries originate?',
      'answers': [
        'Belgium',
        'France (duh)',
        'Switzerland',
      ],
    },
    {
      'question': 'Which sea creature has three hearts?',
      'answers': [
        'Great White Sharks',
        'Killer Whales',
        'The Octopus',
      ],
    },
    {
      'question': 'Which European country eats the most chocolate per capita?',
      'answers': [
        'Belgium',
        'The Netherlands',
        'Switzerland',
      ],
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
          actions: [IconButton(onPressed: null, icon: Icon(Icons.backspace))],
        ),
        body: _chosen < _question.length
            ? Column(
                children: <Widget>[
                  Question(
                    _question[_chosen]['question']?.toString() ?? '',
                  ),
                  ...(_question[_chosen]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Result(),
      ),
    );
  }
}
