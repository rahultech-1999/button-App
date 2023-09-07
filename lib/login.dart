import 'package:first_prectic/signIn.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required String title}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  get kLabelStyle => null;

  get kHintTextStyle => null;

  Widget _buildEmailTF(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(

              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(5,5),
                )

              ],
             ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle,
            ),

          ),
         ),
      ],
    );
  }

  Widget _buildPasswordTF(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(

            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.purple,
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(5,5),
              )

            ],
          ),

          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),

              hintText: 'Enter your Password',
              hintStyle: kHintTextStyle,
            ),

          ),
        ),
      ],
    );
  }
  Widget _buildForgetPasswordBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: FloatingActionButton(
        onPressed: () => print('Forget Password Button Pressed'),
        // Padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forget Password',
          style: kLabelStyle,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var decoration;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF7398AE5),
              ],
                stops: [0.1, 0.4, 0.7, 0.9],
                ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSens',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 30.0),
                  _buildEmailTF(),
                  SizedBox(
                    height: 30.0,
                  ),
                  _buildPasswordTF(),
                  SizedBox(height: 30.0,),
                  _buildForgetPasswordBtn(),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: <Widget>[
                            Theme(data: ThemeData(
                                unselectedWidgetColor: Colors.white),
                              child: Checkbox(
                                value: _rememberMe,
                                checkColor:Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value){
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                },
                              ),
                            ),
                      ],
                      ),

                      ),
                    ],
                  ),
                  Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60,top: 100),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) =>  SignInPage(title: 'MySigInApp',),
                              ),
                            );
                          },
                          child: Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Container(
                                  height: 80,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.purple,
                                        spreadRadius: 3,
                                        blurRadius: 8,
                                        offset: Offset(5,5),
                                      )

                                    ],
                                  ),

                                  child:Center(
                                      child: Text("Button",
                                        style: TextStyle(
                                            color: Colors.purple,
                                            fontSize: 27,
                                            fontWeight: FontWeight.w500),)),

                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

