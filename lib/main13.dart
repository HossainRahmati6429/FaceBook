//1:

// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.blue,
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Icon(
//                   Icons.facebook,
//                   size: 50,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextField(
//                 strutStyle: StrutStyle(),
//                 decoration: InputDecoration(
//                   hintText: ("Enter Phone number or email"),
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                       borderRadius: BorderRadius.circular(9)),
//                   filled: true,
//                   fillColor: Colors.white,
//                 ),
//               ),
//               TextField(
//                 strutStyle: StrutStyle(),
//                 decoration: InputDecoration(
//                   hintText: ("Password"),
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                       borderRadius: BorderRadius.circular(9)),
//                   filled: true,
//                   fillColor: Colors.white,
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Log in"),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Color.fromARGB(177, 48, 206, 56),
//                     fixedSize: Size(300, 9)),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {});
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                       content:
//                           Text("We wil help you to the get the new password")));
//                 },
//                 child: Text(
//                   "Forgot Password?",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {});
//                   ScaffoldMessenger.of(context)
//                       .showSnackBar(SnackBar(content: Text("YOU gone")));
//                 },
//                 child: Text(
//                   "Back",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text("---------------or------------"),
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Creat a new account",
//                   style: TextStyle(color: Colors.blue),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Color.fromARGB(255, 210, 217, 221),
//                     fixedSize: Size(300, 9)),
//               ),
//             ],
//           ),
//         ));
//   }
// }

//2:

// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(home: MyApp1()));
// }

// class MyApp1 extends StatefulWidget {
//   const MyApp1({super.key});

//   @override
//   State<MyApp1> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         title: Center(child: Text("Hossain Rah")),
//       ),
//       body: Padding(padding: EdgeInsets.all(30),child:  Column(

//         children: [
//           SizedBox(height: 0,),
//           Center(
//             child: CircleAvatar(
//               backgroundColor: Colors.white,
//               radius: 30,
//               child: Icon(
//                 Icons.person,
//                 size: 60,
//                 color: Colors.purple,
//               ),
//             ),
//           ),
//           SizedBox(height: 50,),
//            Center(
//              child: Card(
//                child: ListTile(
//                title: Text("Anna Avetisyan"),
//                leading: Icon(Icons.person,color:Colors.purple,),
//                ),
//              ),
//            ),
//             Center(
//              child: Card(
//                child: ListTile(
//                title: Text("birthday"),
//                leading: Icon(Icons.home,color:Colors.purple,),
//                ),
//              ),
//            ),
//             Center(
//              child: Card(
//                child: ListTile(
//                title: Text("9909480890"),
//                leading: Icon(Icons.phone,color:Colors.purple,),
//                ),
//              ),
//            ),
//             Center(
//              child: Card(
//                child: ListTile(
//                title: Text("facebook Acount"),
//                leading: Icon(Icons.facebook,color:Colors.purple,),
//                ),
//              ),
//            ),
//             Center(
//              child: Card(
//                child: ListTile(
//                title: Text("ali.@gmail.com"),
//                leading: Icon(Icons.email,color:Colors.purple,),
//                ),
//              ),
//            ),
//             Center(
//              child: Card(
//                child: ListTile(
//                title: Text("Passord"),
//                trailing: Icon(Icons.keyboard_return),
//                leading: Icon(Icons.remove_red_eye,color:Colors.purple,),
//                ),
//              ),
//            ),
//            SizedBox(height: 15,),
//            ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.purple
//             ),
//             onPressed: (){}, child:
//            Text("Edit Profile",style: TextStyle(
//             color: Colors.white
//            ),),
//            )

//         ],
//       ),
//     ));
//   }
// }

//3:

//import 'package:flutter/material.dart';

//void main(List<String> args) {
//  runApp(
//    MaterialApp(
//      home: Calculator(),
//    )
//  );
//}
//class Calculator extends StatefulWidget {
//  const Calculator({super.key});

//  @override
//  State<Calculator> createState() => _CalculatorState();
//}

//class _CalculatorState extends State<Calculator> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.green,
//        title: Center(child: Text("Calculator"),
//        ),
//      ),
//      body:
//      Expanded(child:

//      Column(
//        children: [
//          SizedBox(height: 20,),

//      GestureDetector(
//        child: TextField(


//        ),
//      ),
//          Container(),
//          Row(
//            children: [
//            buildbutton('c'),buildbutton('%'),
//            buildbutton('/'),buildbutton('*'),
//            ],
//          ),
//          Row(
//            children: [
//            buildbutton('7'),buildbutton('8'),
//            buildbutton('9'),buildbutton('*'),
//            ],
//          ),
//          Row(
//            children: [
//            buildbutton('4'),buildbutton('5'),
//            buildbutton('6'),buildbutton('-'),
//            ],
//          ),
//          Row(
//            children: [
//            buildbutton('1'),buildbutton('2'),
//            buildbutton('3'),buildbutton('+'),
//            ],
//          ),
//          Row(
//            children: [
//            buildbutton('+/-'),buildbutton('0'),
//            buildbutton('.'),buildbutton('='),
//            ],
//          ),
//        ],
//      )),
//    );
//  }
//}

//  buildbutton(String text){
//return
//Expanded(child:
//ElevatedButton(
//  style: ElevatedButton.styleFrom(
//    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0))
//  ),
//  onPressed: (){}, child: Text(
//  text, style: TextStyle(fontSize: 24),))
//);

//  }
