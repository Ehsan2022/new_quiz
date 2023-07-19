import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:new_quiz/Splash%20screen.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
    home:myapp() ,
  ));
}
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

  home: myapp2(),  );}
}