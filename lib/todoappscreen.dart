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
        title: Text(
          "TODO APP",
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: textlist.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5, color: Colors.black, spreadRadius: 2),
                    ],
                  ),
                  margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                  child: ListTile(
                    tileColor: Colors.white,
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
                                      Center(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              textlist[index] =
                                                  textupdatecontroller.text;
                                            });
                                            textupdatecontroller.clear();
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Update",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue)),
                                        ),
                                      )
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
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textlist.add(textlistcontroller.text);
                            textlistcontroller.clear();
                          });
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue)),
                      ),
                    )
                  ],
                );
              });
        },
        child: Text(
          "+",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
