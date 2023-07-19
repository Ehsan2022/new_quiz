import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_quiz/question_controller.dart';


import 'components/body.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
    home:QuizScreen() ,
  ));
}

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FloatingActionButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}
