import 'package:flutter/material.dart';

class MyPrivacyPolicyPage extends StatefulWidget {
  const MyPrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  State<MyPrivacyPolicyPage> createState() => _MyPrivacyPolicyPageState();
}

class _MyPrivacyPolicyPageState extends State<MyPrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Privacy Policy"),
      ),
    );
  }
}
