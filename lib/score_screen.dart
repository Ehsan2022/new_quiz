import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_quiz/home%20page.dart';
import 'package:new_quiz/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:confetti/confetti.dart';
import 'constants.dart';
void main (){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
    home: ScoreScreen1(),
  ));
}
class ScoreScreen1 extends StatefulWidget {
  @override
  State<ScoreScreen1> createState() => _ScoreScreen1State();
}

class _ScoreScreen1State extends State<ScoreScreen1> {
  bool isPlaying=false;
  final controller = ConfettiController();

  @override
  void initState() {
    super.initState();
    controller.play();
  }
  @override
  void dispose() {
    controller.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Stack(alignment: Alignment.topCenter,
      children: [ Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [Container(decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        "assest/diamond--v1.png",
                      ))),),
                Spacer(flex: 3),
                Text(
                  "Score",
                  style: TextStyle(color: kSecondaryColor,fontSize: 45,fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                  style: TextStyle(color: kSecondaryColor,fontSize: 45,fontWeight: FontWeight.bold),
                ),
                Spacer(flex: 3),
              ],
            )
          ],
        ),
      ),ConfettiWidget(confettiController: controller,
      shouldLoop: true,),
      MaterialButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homepage()));
      },child: Text("BACK TO HOME PAGE",style: TextStyle(backgroundColor: Colors.white38),),)]
    );
  }
}
