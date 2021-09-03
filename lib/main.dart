///Flutter Folks
///Created by: Md. Abdur Rouf
///Created at: Sep 4, 2021

import 'package:bkash_payment_animation/animated_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bKash Animation Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'bKash Animation Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            //DO your ui design
            // I am keeping it blank for the demo
            child: Container(),
          ),
          //Animated button
          AnimatedButton(
            onComplete: _onConfirmed,
          )
        ],
      ),
    );
  }

  void _onConfirmed() {
    //Do your task whatever you want
    //As an example, Let's show a dummy dialog
    showDialog(
      context: context,
      builder: (context){
        return Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 32,vertical: 72),
              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 72),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.check,color:Colors.green,size: 96,),
                  Center(
                    child: Text(
                      "Success",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
