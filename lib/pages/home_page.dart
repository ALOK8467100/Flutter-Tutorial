// ignore_for_file: unused_import, prefer_final_fields, prefer_const_constructors, sort_child_properties_last, prefer_typing_uninitialized_variables, avoid_print, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_by_fcc/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:http/http.dart';
import 'dart:convert';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // var myText =  "Change My Name";
  // TextEditingController _nameController = TextEditingController(); 


String url = "https://jsonplaceholder.typicode.com/photos";
var data;

// if we want to run something before this page or widget then we use initState
  @override
  void initState(){
    super.initState();
    fetchData();
  }

  fetchData() async {
    Response response = await get(Uri.parse(url));
     data = jsonDecode(response.body);
    setState(() {
      
    });
  }

  // if we want to destory that perticular screen then we use this
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: data != null
            ? ListView.builder(
              itemBuilder: (context,index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text(" ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length,
            )
            :Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(), // for Drawer we work on other page. 

      // floatingActionButton: FloatingActionButton.extended(  // when we use extra varible like text, then use extendedin function
      //   onPressed: (){},
      //  label: const Text('Approve'),
      //  icon: const Icon(Icons.thumb_up),
      //    backgroundColor: Colors.pink,
      // ),

      floatingActionButton: FloatingActionButton( // 
        onPressed: (){
          // myText = _nameController.text;
          // setState(() {
            
          // });
        },
        child: Icon(Icons.send),
         backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,  // this is used to change the location of our floatingbutton

    );
  }
}