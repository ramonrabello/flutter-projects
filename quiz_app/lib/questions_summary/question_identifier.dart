import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.questionIdentifier,
    required this.isCorrectAnswer
  });

  final int questionIdentifier;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      decoration: ShapeDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 150, 198, 241)
              : const Color.fromARGB(255, 249, 133, 241),
          shape: const CircleBorder(
            eccentricity: 0.1,
          )),
      child: Text(
        questionIdentifier.toString(),
        style: GoogleFonts.lato(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
