import 'package:flutter/material.dart';

class toDoBox extends StatelessWidget {
  final deleteToDo;

  toDoBox(this.deleteToDo);

  @override
  Widget build(BuildContext context) {
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
              iconSize: 25.0,
              padding: EdgeInsets.only(bottom: 10.0, right: 10.0),
              alignment: Alignment.topRight,
              icon: const Icon(Icons.close),
              onPressed: deleteToDo,
              color: Color.fromARGB(255, 245, 245, 245),
            ),
          ],
        ),
      ),
    );
  }
}
