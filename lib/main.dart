import 'package:flutter/material.dart';

import 'todolist.dart';
import './drawer.dart';
import './bottombar.dart';
import './alert.dart';

void main() {
  runApp(const todoApp());
}

class todoApp extends StatefulWidget {
  const todoApp({Key? key}) : super(key: key);

  @override
  _todoAppState createState() => _todoAppState();
}

class _todoAppState extends State<todoApp> {
  var toDos = [];
  bool show = false;
  var toDoIndex = -1;

  void ok(text) {
    setState(() {
      show = false;
      toDos.add(text);
      print(toDoIndex);
      print(toDos);
      toDoIndex += 1;
    });
  }

  void createToDo() {
    setState(() {
      show = true;
      print(toDoIndex);
    });
  }

  void deleteToDo(value) {
    setState(() {
      toDos.remove(value);
      print(value);
      toDoIndex = toDoIndex - 1;
    });
    print(toDoIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: drawer('dasd'),
        bottomNavigationBar: bottomBar(),
        appBar: AppBar(
          title: const Text('TodoApp'),
          actions: <Widget>[
            IconButton(onPressed: null,
              icon: Icon(Icons.info))
          ],
        ),
        body: ListView(
          children: [
            show ? alert(ok) : toDoList(toDos, toDoIndex, deleteToDo),
          ],
        ),
        floatingActionButton: ElevatedButton(
            child: const Text('Add to do'), onPressed: createToDo),
      ),
    );
  }
}
