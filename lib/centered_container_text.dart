import 'package:flutter/material.dart';

import 'dart_roller.dart';

class DiceRollingContainer extends StatelessWidget {
  const DiceRollingContainer(this.colors, {super.key});

  final beginAlignment = Alignment.topLeft;
  final endAlignment = Alignment.topLeft;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: Alignment.bottomRight,
        ),
      ),
      height: 500,
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
