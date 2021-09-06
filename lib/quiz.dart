import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  //final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[],
    );
  }
}
