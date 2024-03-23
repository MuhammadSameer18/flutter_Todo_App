import 'package:flutter/material.dart';
import 'package:todoapp/screenview.dart';

void main() {
  runApp(const todoapp());
}

class todoapp extends StatelessWidget {
  const todoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screenview(),
    );
  }
}
