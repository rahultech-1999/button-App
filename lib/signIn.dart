import 'package:first_prectic/signup.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,

      body: Row(
        children: [
          Padding(padding:
          EdgeInsets.only(left: 160,top: 600),
            child: InkWell(onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => SignUpPage(titel:"SignUpPage",),
                  ),
              );
            },
              child: Container(
                child: Text("Sign In",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize:25,
                      fontWeight: FontWeight.bold),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
