// ignore_for_file: unnecessary_import, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: Container(child:Text("Hi Flutter")),
    );
  }
}