import 'package:flutter/material.dart';

class MyNotificationPage extends StatefulWidget {
  const MyNotificationPage({Key? key}) : super(key: key);

  @override
  State<MyNotificationPage> createState() => _MyNotificationPageState();
}

class _MyNotificationPageState extends State<MyNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Notification"),
      ),
    );
  }
}
