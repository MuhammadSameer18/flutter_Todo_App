import 'package:flutter/material.dart';

import 'package:todoapp/todoappscreen.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo App",
      home: todoappscreen(),
    );
  }
}
