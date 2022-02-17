import 'package:flutter/material.dart';
import 'todobox.dart';

class toDoList extends StatelessWidget {
  final List<dynamic> toDos;
  final int toDoIndex;
  final VoidCallback deleteToDo;

  toDoList(this.toDos, this.toDoIndex, this.deleteToDo);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       ...toDos.map((e) {
         return toDoBox(deleteToDo);
       })
      ],      
    );
  }
}