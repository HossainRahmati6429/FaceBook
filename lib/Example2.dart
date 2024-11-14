import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
     body: Center(
       child: Container(
         color: Colors.green,
         child: Column(

         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(width: 100, height: 100,color: Colors.brown, child: Text("c1"),),
           Container(width: 100, height: 100, color: Colors.green, child: Text("c2"),),
           Container(width: 100,height: 100,color: Colors.blue, child: Text("c3"),),


         ],
       ),
     ),
    ),


        )
  ));
}