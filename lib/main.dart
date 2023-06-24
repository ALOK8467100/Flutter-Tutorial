// ignore_for_file: unnecessary_import, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_final_fields, unused_field, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_by_fcc/pages/home_page.dart';

void main(){
  // WidgetsApp // MaterialAppp  // CupertinoApp
  // now WidgetsApp not provide inbuild design, it is kind of low level development.
  // So we use MaterialApp for various functions.
  // And if we want to intrested in Human Interface so we use CupertinoApp


  // now using again and again hot restart we made a new class of MyApp.
  // and in MyApp we initialized our MaterialApp
  runApp(MyApp());
}



// here we declare a new class name as MyApp
// And in this we assign MaterialAppp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Homepage(),
     theme:ThemeData(
      primarySwatch: Colors.purple,
     ),
  );
  }
}


