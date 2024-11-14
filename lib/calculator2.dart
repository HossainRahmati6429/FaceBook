import 'package:fb/calculator.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));

}

class MyApp extends StatelessWidget {
   MyApp({super.key});

var sfn, ssn;
  var result= 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Calculator", style: TextStyle(fontSize: 33,color: Colors.blue),),
                TextField(
                  decoration: InputDecoration(hintText: "First Nuber") ,

                ),
                TextField(
                  decoration: InputDecoration(hintText: "Second Nuber") ,

                  onChanged: (data){
                    ssn=data;

                  } ,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(onPressed: (){
                      }, child: Text("Calcullator")),
                ),
                Text("Result = 0"),
              ],
            ),
          ),

    );

  }

}
