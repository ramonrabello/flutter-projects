import 'package:flutter/material.dart';
import 'package:quiz_app/models/summary_item_data.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<SummaryItemData> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(
              SummaryItemData(
                  data.questionIdentifier,
                  data.question,
                  data.userAnswer,
                  data.correctAnswer
                ),
            );
          }).toList()
        ),
      ),
    );
  }
}
