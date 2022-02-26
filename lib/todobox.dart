import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class toDoBox extends StatelessWidget {
  final Function deleteToDo;
  final toDos;

  toDoBox(this.deleteToDo, this.toDos);
  @override
  Widget build(BuildContext context) {
    print(toDos);
    return Center(
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        //padding: EdgeInsets.only(left: 330, bottom: 50),
        color: Color.fromARGB(255, 12, 138, 241),
        width: 400.0,
        height: 80.0,
        child: Row(
          children: [
            Flexible(
              child: Container(
                constraints: BoxConstraints(minWidth: 400.0, minHeight: 100.0),
                padding: EdgeInsets.all(5.0),
                color: Colors.white,
                child: Text(
                  toDos,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            IconButton(
              iconSize: 25.0,
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
