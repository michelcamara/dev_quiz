import 'package:dev_quiz/challenge/widget/answer/answer_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
            isRight: true,
            isSelected: true,
            title: "Algum titulo para ser inserido neste card",
          ),
          AnswerWidget(
            title: "Algum titulo para ser inserido neste card",
          ),
          AnswerWidget(
            title: "Algum titulo para ser inserido neste card",
          ),
          AnswerWidget(
            title: "Algum titulo para ser inserido neste card",
          ),
          AnswerWidget(
            title: "Algum titulo para ser inserido neste card",
          ),
        ],
      ),
    );
  }
}
