import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:new_quiz/constants.dart';
import 'home page.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
    home:WelcomeScreen() ,
  ));
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  "assest/astronaut.png",
                ))),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2),
                  Center(
                    child: Text("Let's Play Quiz",
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ))
                        .animate()
                        .fade(delay: 500.ms)
                        .slideY(curve: ElasticInOutCurve())

                        .then()
                        .shake(),
                  ),
                  Center(child: Text("Enter your informations below")),
                  Spacer(), // 1/6
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Spacer(), // 1/6
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text("Lets Start Quiz",
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                  ),

                  Spacer(flex: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
