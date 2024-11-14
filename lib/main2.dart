import 'package:fb/main.dart';
import 'package:flutter/material.dart';

void main(){


  runApp(MaterialApp(
    home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 20, top: 60),
          color: Colors.lime,
          width: 200,
          height: 200,
          child: Text("data", style: TextStyle(color: Colors.white,fontSize: 33),),

        )

    ) ,


  ));


}