import 'package:flutter/material.dart';


class bottomBar extends StatelessWidget {
  const bottomBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Color.fromARGB(255, 226, 0, 0),
          child: Container(height: 50.0)
          
    );
  }
}