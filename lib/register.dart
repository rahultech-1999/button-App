import 'package:flutter/material.dart';

import 'content.dart';
import 'login.dart';

void main() {   //main function
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Myregister(title: 'Flutter Demo Home Page'),
    );
  }
}

class Myregister extends StatefulWidget {
  const Myregister({super.key, required this.title});

  final String title;

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  get children => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 0,right: 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(image: AssetImage('assets/images/rahul.jpeg.jpeg'), width: 120,),
                                Image(image: AssetImage('assets/images/bb.jpg'), width: 200,),
                                Image(image: AssetImage('assets/images/rahul.jpeg.jpeg'), width: 120,),
                                Image(image: AssetImage('assets/images/bb.jpg'), width: 200,),
                                Image(image: AssetImage('assets/images/rahul.jpeg.jpeg'), width: 120,),
                                Image(image: AssetImage('assets/images/bb.jpg'), width: 200,),
                                Image(image: AssetImage('assets/images/rahul.jpeg.jpeg'), width: 120,),
                                Image(image: AssetImage('assets/images/bb.jpg'), width: 200,),
                                Image(image: AssetImage('assets/images/rahul.jpeg.jpeg'), width: 120,),
                                // Container(
                                //   height: 100,
                                //   width: 200,
                                //   color: Colors.grey,
                                // ),
                                // Container(
                                //   height: 100,
                                //   width: 200,
                                //   color: Colors.cyanAccent,
                                // ),
                                // Container(
                                //   height: 100,
                                //   width: 200,
                                //   color: Colors.pink,
                                // ),



                              ],
                            ),
                          ),
                        ),


                      ],
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Column(
            //       children: [
            //         Icon(Icons.phone,size: 35.0,),
            //         Text("phone"),
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Icon(Icons.alt_route,size:35.0,),
            //         Text("Route")
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Icon(Icons.share,size:35.0,),
            //         Text("Share"),
            //       ],
            //     )
            //   ],
            // ),
            SizedBox(
              height: 80,
            ),

            Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100,top: 70),
                    child: InkWell(onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => ContentPage(titil:"Go To"),
                        ),
                      );
                    },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Container(
                              height: 100,
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




            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 40),
                  child: Container(
                    child: Column(

                      children: [

                        ElevatedButton.icon(

                          icon: Icon(Icons.add_shopping_cart_outlined),
                          label: Text("Let's Begin"),
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) =>  LoginPage(title: 'MyApp',),
                              ),
                            );
                          },

                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20.0),
                            fixedSize: Size(200, 80),

                            textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                            primary: Colors.greenAccent,
                            onPrimary: Colors.black87,
                            elevation: 10,
                            shadowColor: Colors.deepOrangeAccent,

                            side: BorderSide(color: Colors.black87, width:2),
                            shape: StadiumBorder(),

                          ), //child: null,

                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),

    );

  }


}