import 'package:flutter/material.dart';

var Cont = 0;
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            Cont.toString(),
            style: TextStyle(fontSize: 40, color: Colors.cyan),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: contr,
          child: Icon(
            Icons.add,
            color: Colors.red,
          ),
        ),
      ),
    ),
  );
}

void contr() {
  Cont++;
  print("conter is $Cont");
}
