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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          // color: Colors.red,
          width: 100,
          height: 100,
          clipBehavior: Clip.antiAlias, // it remove all extra text which lie outside shape
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: Colors.red,
            // shape: BoxShape.circle, // by shape we can design our container shaper.
            borderRadius:BorderRadius.circular(10),
            gradient: LinearGradient(colors:[ // by using gradient we can use many color at same time.
              Colors.pink,
              Colors.yellow,
              Colors.black,
              Colors.blue,
            ]),
            boxShadow: [
              BoxShadow(
                color: Colors.pinkAccent,
                blurRadius: 20,
              ),

            ] 
          ),
          child: Text("I am a Box"),
          ),
      ), 
    );
  }
}