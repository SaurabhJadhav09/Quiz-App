import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
const QuestionIdentifier({
  super.key,
  required this.isCorrect,
  required this.questionIndex, 
});

  final   int questionIndex;
  final bool isCorrect;

  @override 
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
          ? const Color.fromARGB(255, 88, 215, 92) 
          : const Color.fromARGB(255, 255, 102, 102),
        borderRadius: BorderRadius.circular(100),
      ),
    child: Text(
      questionNumber.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 22, 2, 56),  
      ),
    ) ,
    );
  }
}