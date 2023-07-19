import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
    home:info() ,
  ));
}
class info extends StatelessWidget {
  const info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(child: Text('IT WILL BE AVALIABLE IN NEXT VERSION...!',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold))),
    );
  }
}
