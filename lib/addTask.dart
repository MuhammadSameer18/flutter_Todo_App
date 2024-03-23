import 'package:flutter/material.dart';

class addTask extends StatelessWidget {
  const addTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Add Task"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Title",
                  labelText: "Title",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Details",
                  labelText: "Details",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              width: 300,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Text(
                    "ADD",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
