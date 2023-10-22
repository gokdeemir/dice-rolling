import 'package:flutter/material.dart';

import 'centered_container_text.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: DiceRollingContainer([Colors.blueGrey, Colors.black]),
        ),
        backgroundColor: Colors.grey,
      ),
    ),
  );
}
