import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var question = ['What is your name', 'How are you ?'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: <Widget>[
              Text('The Question '),
              RaisedButton(
                onPressed: null,
                child: Text('Answer 1'),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Answer 2'),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Answer 3'),
              ),
            ],
          )),
    );
  }
}
