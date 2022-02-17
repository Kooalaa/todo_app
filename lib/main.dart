import 'package:flutter/material.dart';

import 'todolist.dart';

void main() {
  runApp(const todoApp());
}

class todoApp extends StatefulWidget {
  const todoApp({Key? key}) : super(key: key);

  @override
  _todoAppState createState() => _todoAppState();
}

class _todoAppState extends State<todoApp> {
  var toDos = [
  ];

  var toDoIndex = 0;

  void createToDo() {

    setState(() {
      toDos.add(toDoIndex);
      toDoIndex = toDoIndex + 1;      
    });
    print(toDos);
  }

  void deleteToDo() {

    setState(() {
      toDos.removeLast();
      toDoIndex = toDoIndex - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TodoApp')
          ),
        body: toDoList(
          toDos, toDoIndex, deleteToDo),
        floatingActionButton: ElevatedButton(
          child: const Text('Add to do'),
           onPressed: createToDo
           ),
      ),
    );
  }
}
