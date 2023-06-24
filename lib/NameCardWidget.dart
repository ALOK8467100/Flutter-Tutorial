// ignore_for_file: file_names, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    super.key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Column(
        children: <Widget>[
        Image.asset(
          "assets/images.jpg",
          // width: 100,
          // height: 100,
          // fit: BoxFit.fitWidth,  // we can use fit tag here if required
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          myText,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:"Enter Some Text", labelText:"Name" 
          ),
          ),
        ),
      ]
      ),
    );
  }
}