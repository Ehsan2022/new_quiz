import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:new_quiz/home%20page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:new_quiz/welcome_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myapp2(),
  ));
}

class myapp2 extends StatefulWidget {
  const myapp2({Key? key}) : super(key: key);

  @override
  State<myapp2> createState() => _myapp2State();
}

class _myapp2State extends State<myapp2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    },);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage(
                "assest/splash.jpg",
              ),
              width: 500,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitSquareCircle(
              size: 50,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
