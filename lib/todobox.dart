import 'package:flutter/material.dart';

class toDoBox extends StatelessWidget {
  final Function deleteToDo;
  final toDos;

  toDoBox(this.deleteToDo, this.toDos);
  @override
  Widget build(BuildContext context) {
    print(toDos);
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0),
        margin: const EdgeInsets.all(10.0),
        //padding: EdgeInsets.only(left: 330, bottom: 50),
        color: Color.fromARGB(255, 12, 138, 241),
        width: 400.0,
        height: 80.0,
        child: Row(
          children: [        
            Text(toDos),
            IconButton(
              iconSize: 25.0,
              padding: EdgeInsets.only(bottom: 10.0, right: 10.0),
              alignment: Alignment.topRight,
              icon: const Icon(Icons.close),
              onPressed: () => deleteToDo(toDos),
              color: Color.fromARGB(255, 245, 245, 245),
            ),
          ],
        ),
      ),
    );
  }
}
