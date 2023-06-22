// ignore_for_file: unnecessary_import, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

void main(){
  // WidgetsApp // MaterialAppp  // CupertinoApp
  // now WidgetsApp not provide inbuild design, it is kind of low level development.
  // So we use MaterialApp for various functions.
  // And if we want to intrested in Human Interface so we use CupertinoApp
  runApp(MaterialApp(
     home: const Homepage(),
     theme:ThemeData(
      primarySwatch: Colors.purple,
     ),
  ));
}


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Container(
        height: 500,  // height and row will be changed according with Row and column 
        // width:300,
        color:Colors.teal,
        child: Row( // in place of column we can put Row and see changes.
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: <Widget>[
            Container(
          padding: const EdgeInsets.all(8),
          color: Colors.red,
          width: 100,
          height: 100,
          alignment: Alignment.topLeft,
          ),
          Container(
          padding: const EdgeInsets.all(8),
          color: Colors.yellow,
          width: 100,
          height: 100,
          alignment: Alignment.topLeft,
          ),
          Container(
          padding: const EdgeInsets.all(8),
          color: Colors.green,
          width: 100,
          height: 100,
          alignment: Alignment.topLeft,
          ),
          ],
        ),
      ), 
    );
  }
}