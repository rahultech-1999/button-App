import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top:20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/rahul.jpeg.jpeg'),
              ),
            ),
          ),
          Text("Header Drawer",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

  }
}

