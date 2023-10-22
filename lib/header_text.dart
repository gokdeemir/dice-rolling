import 'package:flutter/material.dart';

var header = 'header';

class HeaderText extends StatelessWidget {
  const HeaderText(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(fontSize: 45, color: Colors.orangeAccent),
    );
  }
}
