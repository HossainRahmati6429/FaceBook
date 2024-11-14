
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (c)=> second()));
            },
              child: Image.asset('images/ho.jpg')),
      
    );
  }
}

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hi"),

    );
  }
}
