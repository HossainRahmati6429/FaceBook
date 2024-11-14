import 'package:fb/calculator.dart';
import 'package:flutter/material.dart';

void main(){
  
  runApp(MaterialApp(

    home:MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(

          onTap: (){

            setState();

          },
         child: Container(width: 150,height: 150,color: Colors.blue,),

        ),
      ),
    );
  }
}
setState(){
  print("Hello");
}