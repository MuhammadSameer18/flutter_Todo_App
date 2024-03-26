import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class todoappscreen extends StatefulWidget {
  const todoappscreen({super.key});

  @override
  State<todoappscreen> createState() => _todoappscreenState();
}

class _todoappscreenState extends State<todoappscreen> {
  List textlist = [];
  TextEditingController textlistcontroller = TextEditingController();
  TextEditingController textupdatecontroller = TextEditingController();
  addtext() {
    setState(() {
      textlist.add("data");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("TODO APP"),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: textlist.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ListTile(
                    tileColor: Colors.yellow,
                    title: Text(textlist[index]),
                    trailing: Wrap(children: [
                      IconButton(
                          onPressed: () {
                            textupdatecontroller.text = textlist[index];
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Update Notes"),
                                    content: TextField(
                                      controller: textupdatecontroller,
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              textlist[index] =
                                                  textupdatecontroller.text;
                                            });
                                            textupdatecontroller.clear();
                                            Navigator.pop(context);
                                          },
                                          child: Text("Update"))
                                    ],
                                  );
                                });
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              textlist.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.delete)),
                    ]),
                  ),
                );
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Notes"),
                  content: TextField(
                    controller: textlistcontroller,
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textlist.add(textlistcontroller.text);
                            textlistcontroller.clear();
                          });
                          Navigator.pop(context);
                        },
                        child: Text("Save"))
                  ],
                );
              });
        },
        child: Text("+"),
      ),
    );
  }
}
