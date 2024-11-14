
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body:SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,

                ),
                Container(
                  color:Colors.red,
                  height: 100,
                  width: 100,
                child: Center(
                 child: Text(
                   "AFGHNISIAN",
                   style: TextStyle(color: Colors.white,fontSize: 60),
                 ),
                ),
                  ),

                Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
        ) ,
      ),
    ),
  );

}
