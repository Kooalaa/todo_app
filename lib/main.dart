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
  var toDos = [];

  var toDoIndex = 0;

  void createToDo() {
    setState(() {
      toDos.add(toDoIndex);
      toDoIndex = toDoIndex + 1;
    });
    print(toDos);
    print(toDoIndex);
  }

  void deleteToDo() {
    setState(() {
      toDos.removeLast();
      toDoIndex = toDoIndex - 1;
    });
    print(toDoIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(backgroundColor: Colors.amber),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.amber,
          child: Container(
            height: 60.0,
            child: Image.asset(
              'assets/images/todolist.png',
              alignment: Alignment.bottomLeft,
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('TodoApp'),
          actions: <Widget>[
            IconButton(onPressed: null, icon: Icon(Icons.abc_rounded))
          ],
        ),
        body: ListView(
          children: [
            toDoList(toDos, toDoIndex, deleteToDo),
          ],
        ),
        floatingActionButton: ElevatedButton(
            child: const Text('Add to do'), onPressed: createToDo),
      ),
    );
  }
}
