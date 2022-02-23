import 'package:flutter/material.dart';

class bottomBar extends StatelessWidget {
  const bottomBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.amber,
          child: Container(
            height: 60.0,
            child: Image.asset(
              'assets/images/todolist.png',
              alignment: Alignment.bottomLeft,
            ),
          ),
        );
  }
}