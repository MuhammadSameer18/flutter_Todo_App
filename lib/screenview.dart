import 'package:flutter/material.dart';
import 'package:todoapp/addtask.dart';

class screenview extends StatefulWidget {
  const screenview({super.key});

  @override
  State<screenview> createState() => _screenviewState();
}

class _screenviewState extends State<screenview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "TODO APP",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => addTask()),
                );
              },
              child: Text("Add Item"))
        ],
      ),
    );
  }
}
