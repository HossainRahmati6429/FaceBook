import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( const MaterialApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
          children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/ho.jpg'),
          ),
          Text(
            'rahmati p',
            style: TextStyle(
              fontFamily: 'PAPYRUS',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              fontFamily: 'ALGER Reguler',
              color: Colors.yellow,
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,

            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 10.0,
                ),
              Text(
                '+793642948',
                style: TextStyle(
                  color: Colors.yellow,
                  fontFamily: 'ALGER Reguler',
                  fontSize: 20.0,
                ),
              )
              ],
            ),
          ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'hossain@email.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal,
                        fontFamily: 'ALGER Reguler'),
                
                      ),
                  ],
                ),
              ),
            )
        ],
      )),
    )
    );
  }
}
