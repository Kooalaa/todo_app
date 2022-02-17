import 'package:flutter/material.dart';

class toDoBox extends StatelessWidget {
  final deleteToDo;

  toDoBox(this.deleteToDo);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: EdgeInsets.only(left: 330, bottom: 50),
        color: Color.fromARGB(255, 12, 138, 241),
        width: 400.0,
        height: 80.0,
        child: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: deleteToDo,
          color: Color.fromARGB(255, 245, 245, 245),
        ),
      ),
    );
  }
}