import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(

    home: Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("786"),
            TextField(),
            TextField(readOnly: false,),
            TextField(decoration: InputDecoration(
              icon: Icon(Icons.person),
              iconColor: Colors.yellow,
              label: Text("username"),

            ),

            ),

            TextField(decoration: InputDecoration(
              icon: Icon(Icons.email),
              iconColor: Colors.green,
              label: Text("email"),
            ), obscureText: true,)
          ],
        ),
      ),
    ),
  ));
}
