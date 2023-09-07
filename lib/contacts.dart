import 'package:flutter/material.dart';

class MyContactsPage extends StatefulWidget {
  const MyContactsPage({Key? key}) : super(key: key);

  @override
  State<MyContactsPage> createState() => _MyContactsPageState();
}

class _MyContactsPageState extends State<MyContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Contact"),
      ),
    );
  }
}
