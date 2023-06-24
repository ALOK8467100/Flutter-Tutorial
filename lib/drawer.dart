// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}