import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 100, height: 100, color: Colors.cyan,),
              Container(width: 100, height: 100, color: Colors.lime,),
              Container(width: 100, height: 100, color: Colors.black12,),
              Container(width: 100, height: 100, color: Colors.lightGreen,),
              Container(width: 100, height: 100, color: Colors.deepOrange,),

            ]
        ),
      ),
    ),
  ));
}