import 'package:first_prectic/register.dart';
import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get children => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
    ),
    body: Container(
      child: Column(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //
          //     Image(image: AssetImage('assets/images/rahul.jpeg.jpeg'), width: 120,),
          //     Image(image: AssetImage('assets/images/rahul.jpeg.jpeg'), width: 120,),
          //     Image(image: AssetImage('assets/images/rahul.jpeg.jpeg'), width: 120,),
          //   ],
          // ),
          // SizedBox(
          //   height: 80,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(Icons.star),
          //     Icon(Icons.star),
          //     Icon(Icons.star),
          //     Icon(Icons.star_border),
          //     Icon(Icons.star_border),
          //   ],
          // ),
          // SizedBox(
          //   height: 80,
          // ),
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
          // SizedBox(
          //   height: 80,
          // ),
          Row(
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 100,top: 200),
                 child: Container(
                   child: Column(

                    children: [

                      ElevatedButton.icon(

                          icon: Icon(Icons.add_shopping_cart_outlined),
                          label: Text("Let's Begin"),
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Myregister(title: 'MyAppoppo',),
                                ),
                            );
                          },

                           style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20.0),
                            fixedSize: Size(200, 80),

                            textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                            primary: Colors.greenAccent,
                            onPrimary: Colors.black87,
                            elevation: 5,
                            shadowColor: Colors.deepOrangeAccent.shade700,
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
          SizedBox(
            height: 10,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(Icons.star),
          //     Icon(Icons.star),
          //     Icon(Icons.star),
          //     Icon(Icons.star_border),
          //     Icon(Icons.star_border),
          //   ],
          // ),
          // SizedBox(
          //   height: 10,
          // ),
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
        ],
      ),
    ),

    );

  }


}