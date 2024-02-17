import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/summary_item_data.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key, 
    required this.chosenAnswers,
    required this.onRestartQuiz
  });

  final List<String> chosenAnswers;
  final void Function() onRestartQuiz;

  List<SummaryItemData> get summaryData {
    final List<SummaryItemData> summary = [];
    
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        SummaryItemData(
          i, questions[i].text, 
          questions[i].answers[0], 
          chosenAnswers[i]
        ) 
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where(
        (data) => data.userAnswer == data.correctAnswer,
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(150, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30,),
            TextButton.icon(
              onPressed: onRestartQuiz, 
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.restart_alt),
              label: const Text('Restart Quiz!'),
            ),
          ],
        )
      ),
    );
  }
}