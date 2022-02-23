import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  final text;

  drawer(this.text);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Column(
          children: [
            Text(text),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.only(left: 330, bottom: 50),
              color: Color.fromARGB(255, 12, 138, 241),
              width: 400.0,
              height: 80.0,
            ),
            Container(
               margin: const EdgeInsets.all(10.0),
               padding: EdgeInsets.only(left: 330, bottom: 50),
               color: Color.fromARGB(255, 12, 138, 241),
               width: 400.0,
               height: 80.0,
            ),
          ],
        )
        ),
    );
  }
}