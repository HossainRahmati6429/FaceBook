import 'package:flutter/material.dart';

main(){
  runApp(
      MaterialApp(

      )
  );
}
class myapp extends StatelessWidget {
   myapp({super.key});
  final List<String> items= List.generate(30,(index) =>"Item ${index+1}");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index){
        return ListTile(
        trailing: Icon(Icons.chevron_right),
          leading: Icon(Icons.person),
          title: Text("dfkdkkfkd"),
        );
      },
    );
  }
}

