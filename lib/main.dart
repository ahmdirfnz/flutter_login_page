
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background_image.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.only(top: 350),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your username',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  icon: Icon(Icons.person),
                ),
              ),

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  icon: Icon(Icons.lock),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton(
//                textColor: Colors.greenAccent,
                onPressed: () {
                  print("You have submitted the data");
              }, child: Text(
                "Submit",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
