import 'package:flutter/material.dart';

class MyNotePage extends StatefulWidget {
  const MyNotePage({Key? key}) : super(key: key);

  @override
  State<MyNotePage> createState() => _MyNotePageState();
}

class _MyNotePageState extends State<MyNotePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Note"),
      ),
    );
  }
}
