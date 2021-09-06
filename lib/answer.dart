import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectFen;
  final String answerText;
  Answer(this.selectFen, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          selectFen();
        },
        child: Text(answerText),
      ),
    );
  }
}
