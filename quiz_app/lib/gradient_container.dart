import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, this.content, {super.key});

  final List<Color> colors;
  final Widget? content;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAlignment, end: endAlignment
          )
      ),
      child: Center(
        child: content,
      )
    );
  }
}

