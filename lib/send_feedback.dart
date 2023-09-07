import 'package:flutter/material.dart';

class MySendFeedbackPage extends StatefulWidget {
  const MySendFeedbackPage({Key? key}) : super(key: key);

  @override
  State<MySendFeedbackPage> createState() => _MySendFeedbackPageState();
}

class _MySendFeedbackPageState extends State<MySendFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Send Feedback"),
      ),
    );
  }
}
