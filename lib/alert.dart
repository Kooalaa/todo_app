import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class alert extends StatefulWidget {
  final Function ok;
  alert(this.ok);

  @override
  State<alert> createState() => _alertState(ok);
}

class _alertState extends State<alert> {

  final myController = TextEditingController();
  final Function ok;
  _alertState(this.ok);
  String text = '';

  void initState() {
    myController.addListener(addText);
  }

  void addText() {
    setState(() {
      text = myController.text;
    });
  }


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: TextField(

        controller: myController,
      ),
      actions: [
        IconButton(
          onPressed: () => ok(text),
          icon: Icon(Icons.create)),
      ],
    );
  }
}