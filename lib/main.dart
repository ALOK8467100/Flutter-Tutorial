// ignore_for_file: unnecessary_import, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_final_fields, unused_field

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


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var myText =  "Change My Name";
  TextEditingController _nameController = TextEditingController(); 


// if we want to run something before this page or widget then we use initState
  @override
  void initState(){
    super.initState();
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
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
            ),
          ),
        ),
      ), 
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Alok Kumar"), 
              accountEmail: Text("alokkumarcse67@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"
                  ),
                ),
            // DrawerHeader(  // this is basic Drawerheader code
            //   child: Text("Hi I an a Drawer"),
            //   decoration: BoxDecoration(color:Colors.purple),
             ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Alok Kumar"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
              onTap: (){}, // varoius tralling like settings,thumb_up,account_circle,edit etc
            ),
             ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("alokkumar67@gmail.com"),
              trailing: Icon(Icons.edit),
              onTap:(){}, // varoius tralling like settings,thumb_up,account_circle,edit etc
            ),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton.extended(  // when we use extra varible like text, then use extendedin function
      //   onPressed: (){},
      //  label: const Text('Approve'),
      //  icon: const Icon(Icons.thumb_up),
      //    backgroundColor: Colors.pink,
      // ),

      floatingActionButton: FloatingActionButton( // 
        onPressed: (){
          myText = _nameController.text;
          setState(() {
            
          });
        },
        child: Icon(Icons.send),
         backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,  // this is used to change the location of our floatingbutton

    );
  }
}