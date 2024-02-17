import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/summary_item_data.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});

  final SummaryItemData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            questionIdentifier: data.questionIdentifier + 1,
            isCorrectAnswer: data.isCorrectAnswer),
        const SizedBox(
          height: 16,
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.question,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                data.userAnswer,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 249, 133, 241),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                data.correctAnswer,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 150, 198, 241),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
                width: 16,
              )
            ],
          ),
        ),
      ],
    );
  }
}
