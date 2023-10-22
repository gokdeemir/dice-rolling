import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();
const sizedBox = SizedBox(
  height: 20,
);

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentNumber = 1;

  void rollDice() {
    setState(() {
      currentNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentNumber.png',
          width: 200,
        ),
        sizedBox,
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.orange,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
            // padding: const EdgeInsets.only(top: 10),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
    throw UnimplementedError();
  }
}
