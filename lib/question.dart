import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  String chosen;
  Question(this.questionText, this.chosen);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [



        Text(chosen),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Text(
            questionText,
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
