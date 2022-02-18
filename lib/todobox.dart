import 'package:flutter/material.dart';

class toDoBox extends StatelessWidget {
  final deleteToDo;

  toDoBox(this.deleteToDo);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        //padding: EdgeInsets.only(left: 330, bottom: 50),
        color: Color.fromARGB(255, 12, 138, 241),
        width: 400.0,
        height: 80.0,
        child: Row(
          children: [     
            SizedBox(
              width: 5,
            ),     
            Flexible(
              child: TextField(   
                textAlign: TextAlign.left,          
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 230, 229, 229),
                  //contentPadding: EdgeInsets.all(20.0),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: deleteToDo,
              color: Color.fromARGB(255, 245, 245, 245),
            ),
          ],
        ),
      ),
    );
  }
}
