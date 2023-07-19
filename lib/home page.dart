import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_quiz/info%20page.dart';
import 'package:new_quiz/main.dart';
import 'package:new_quiz/quiz_screen.dart';
import 'package:new_quiz/constants.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({Key? key, this.ct}) : super(key: key);
  final ct;


  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with TickerProviderStateMixin {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {



    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // bottomNavigationBar: Container(
      //   margin: EdgeInsets.all(displayWidth * .05),
      //   height: displayWidth * .155,
      //   decoration: BoxDecoration(
      //     color: Colors.blueGrey[900],
      //     boxShadow: [
      //       BoxShadow(
      //           color: Colors.black.withOpacity(.1),
      //           blurRadius: 30,
      //           offset: Offset(0, 10))
      //     ],
      //     borderRadius: BorderRadius.circular(50),
      //   ),
      //   child: ListView.builder(
      //       itemCount: 3,
      //       scrollDirection: Axis.horizontal,
      //       padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
      //       itemBuilder: (context, index) => InkWell(
      //             onTap: () {
      //               setState(() {
      //                 currentIndex = index;
      //                 HapticFeedback.lightImpact();
      //               });
      //             },
      //             splashColor: Colors.transparent,
      //             highlightColor: Colors.transparent,
      //             child: Center(
      //               child: Stack(
      //                 children: [
      //                   AnimatedContainer(
      //                     duration: Duration(seconds: 1),
      //                     curve: Curves.fastLinearToSlowEaseIn,
      //                     width: index == currentIndex
      //                         ? displayWidth * .32
      //                         : displayWidth * .18,
      //                     alignment: Alignment.center,
      //                     child: AnimatedContainer(
      //                       duration: Duration(seconds: 1),
      //                       curve: Curves.fastLinearToSlowEaseIn,
      //                       height:
      //                           index == currentIndex ? displayWidth * .12 : 0,
      //                       width: index == currentIndex ? displayWidth * .32 : 0,
      //                       decoration: BoxDecoration(
      //                           color: index == currentIndex
      //                               ? Colors.blueAccent.withOpacity(.2)
      //                               : Colors.transparent,
      //                           borderRadius: BorderRadius.circular(50)),
      //                     ),
      //                   ),
      //                   AnimatedContainer(
      //                       duration: Duration(seconds: 1),
      //                       curve: Curves.fastLinearToSlowEaseIn,
      //                       width: index == currentIndex
      //                           ? displayWidth * .31
      //                           : displayWidth * .18,
      //                       alignment: Alignment.center,
      //                       child: Stack(
      //                         children: [
      //                           Row(
      //
      //                             children: [
      //                               AnimatedContainer(
      //                                 duration: Duration(seconds: 1),
      //                                 curve: Curves.fastLinearToSlowEaseIn,
      //                                 width: index == currentIndex
      //                                     ? displayWidth * .32
      //                                     : 0,
      //                               ),
      //                               AnimatedOpacity(
      //                                 opacity: index == currentIndex ? 1 : 0,
      //                                 duration: Duration(seconds: 1),
      //                                 curve: Curves.fastLinearToSlowEaseIn,
      //                                 child: Text(
      //                                   index == currentIndex
      //                                       ? '${listOfStrings[index]}'
      //                                       : '',
      //                                   style: TextStyle(
      //                                       color: Colors.blueGrey[900],
      //                                       fontWeight: FontWeight.w600,
      //                                       fontSize: 15),
      //                                 ),
      //                               )
      //                             ],
      //                           ),
      //                           Row(
      //                             children: [AnimatedContainer(
      //                               duration: Duration(seconds: 1),
      //                               curve: Curves.fastLinearToSlowEaseIn,
      //                               width: index == currentIndex
      //                                   ? displayWidth * .03
      //                                   : 20,
      //                             ),
      //                             Icon(listoficons[index],
      //                             size: displayWidth*.06,
      //                                 color: index==currentIndex?Colors.blueGrey:Colors.black26,)],
      //                           )
      //                         ],
      //                       ))
      //                 ],
      //               ),
      //             ),
      //           )),
      // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  "assest/quizwall.jpg",
                ))),
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Chose your Subject',
              ),
            ),
          ),
          body: TweenAnimationBuilder(
              duration: Duration(milliseconds: 760),
              tween: Tween(begin: -1, end: 0.5),
              builder: (context, value, child) => Transform.translate(
                    offset: Offset(value * 200 - 100, 0),
                    child: ListView(children: [
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                onPressed: () {Alert(
                                  context: context,
                                  type: AlertType.info,
                                  title: "توجه !",
                                  desc: "شما مضمون تاریخ را انتخاب کردید !"
                                      "این مضمون دارای ۴ سوال میباشد"
                                      " و شما برای اتمام هر سوال ۶۰ ثانیه وقت دارید",
                                  buttons: [
                                  DialogButton(
                                  child: Text(
                                  "شروع!",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () =>
                                  Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => QuizScreen())),
                                  color: Color.fromRGBO(0, 179, 134, 1.0),
                                  ),
                                  DialogButton(
                                  child: Text(
                                  "انصراف!",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  gradient: LinearGradient(colors: [
                                  Color.fromRGBO(116, 116, 191, 1.0),
                                  Color.fromRGBO(52, 138, 199, 1.0)
                                  ]),
                                  )
                                  ],
                                  ).show();},
                                child: CircleAvatar(
                                  radius: 80,
                                  backgroundColor: Colors.grey,
                                  child: CircleAvatar(
                                    radius: 70,
                                    foregroundColor: Colors.red,
                                    backgroundImage:
                                        AssetImage('assest/history).jpg'),
                                  )
                                      .animate()
                                      .animate()
                                      .animate()
                                      .fade(delay: 500.ms)
                                      .slideY(curve: ElasticInOutCurve())
                                      .then()
                                      .shake(),
                                ),
                              ),
            MaterialButton(
              onPressed: () {Alert(
                context: context,
                type: AlertType.warning,
                title: "توجه !",
                desc: "شما مضمون هنر را انتخاب کردید !"
                    "این مضمون دارای ۴ سوال میباشد"
                    " و شما برای اتمام هر سوال ۶۰ ثانیه وقت دارید",
                buttons: [
                  DialogButton(
                    child: Text(
                      "شروع!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () =>
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => info())),
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "انصراف!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(116, 116, 191, 1.0),
                      Color.fromRGBO(52, 138, 199, 1.0)
                    ]),
                  )
                ],
              ).show();},
              child: CircleAvatar(
                                radius: 80,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  maxRadius: 70,
                                  minRadius: 70,
                                  backgroundImage: AssetImage('assest/art.jpg'),
                                )
                                    .animate()
                                    .animate()
                                    .animate()
                                    .fade(delay: 500.ms)
                                    .slideY(curve: ElasticInOutCurve())
                                    .then()
                                    .shake(),
                              ),),
                              Divider(
                                color: Colors.grey,
                                height: 7,
                                indent: 50,
                                endIndent: 50,
                              ),
            MaterialButton(
              onPressed: () {Alert(
                context: context,
                type: AlertType.warning,
                title: "توجه !",
                desc: "شما مضمون ریاضی را انتخاب کردید !"
                    "این مضمون دارای ۴ سوال میباشد"
                    " و شما برای اتمام هر سوال ۶۰ ثانیه وقت دارید",
                buttons: [
                  DialogButton(
                    child: Text(
                      "شروع!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () =>
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => info())),
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "انصراف!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(116, 116, 191, 1.0),
                      Color.fromRGBO(52, 138, 199, 1.0)
                    ]),
                  )
                ],
              ).show();},
              child:  CircleAvatar(
                                radius: 80,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  maxRadius: 70,
                                  minRadius: 70,
                                  backgroundImage:
                                      AssetImage('assest/math.jpg'),
                                )
                                    .animate()
                                    .animate()
                                    .animate()
                                    .fade(delay: 500.ms)
                                    .slideY(curve: ElasticInOutCurve())
                                    .then()
                                    .shake(),
                              ),),
                              Divider(
                                color: Colors.grey,
                                height: 7,
                                indent: 50,
                                endIndent: 50,
                              ),
            MaterialButton(
              onPressed: () {Alert(
                context: context,
                type: AlertType.warning,
                title: "توجه !",
                desc: "شما مضمون تکنالو‌ژی را انتخاب کردید !"
                    "این مضمون دارای ۴ سوال میباشد"
                    " و شما برای اتمام هر سوال ۶۰ ثانیه وقت دارید",
                buttons: [
                  DialogButton(
                    child: Text(
                      "شروع!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () =>
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => info())),
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "انصراف!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(116, 116, 191, 1.0),
                      Color.fromRGBO(52, 138, 199, 1.0)
                    ]),
                  )
                ],
              ).show();},
              child: CircleAvatar(
                                radius: 80,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  maxRadius: 70,
                                  minRadius: 70,
                                  backgroundImage:
                                      AssetImage('assest/technology.png'),
                                )
                                    .animate()
                                    .animate()
                                    .animate()
                                    .fade(delay: 500.ms)
                                    .slideY(curve: ElasticInOutCurve())
                                    .then()
                                    .shake(),
                              ),),
                              Divider(
                                color: Colors.grey,
                                height: 7,
                                indent: 50,
                                endIndent: 50,
                              ),
            MaterialButton(
              onPressed: () {Alert(
                context: context,
                type: AlertType.warning,
                title: "توجه !",
                desc: "شما مضمون اسپورت را انتخاب کردید !"
                    "این مضمون دارای ۴ سوال میباشد"
                    " و شما برای اتمام هر سوال ۶۰ ثانیه وقت دارید",
                buttons: [
                  DialogButton(
                    child: Text(
                      "شروع!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () =>
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => info())),
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "انصراف!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(116, 116, 191, 1.0),
                      Color.fromRGBO(52, 138, 199, 1.0)
                    ]),
                  )
                ],
              ).show();},
              child: CircleAvatar(
                                radius: 80,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  maxRadius: 70,
                                  minRadius: 70,
                                  backgroundImage:
                                      AssetImage('assest/sport.jpg'),
                                )
                                    .animate()
                                    .animate()
                                    .animate()
                                    .fade(delay: 500.ms)
                                    .slideY(curve: ElasticInOutCurve())
                                    .then()
                                    .shake(),
                              ),),
                              Divider(
                                color: Colors.grey,
                                height: 7,
                                indent: 50,
                                endIndent: 50,
                              ),
            MaterialButton(
              onPressed: () {Alert(
                context: context,
                type: AlertType.warning,
                title: "توجه !",
                desc: "شما مضمون موزیک را انتخاب کردید !"
                    "این مضمون دارای ۴ سوال میباشد"
                    " و شما برای اتمام هر سوال ۶۰ ثانیه وقت دارید",
                buttons: [
                  DialogButton(
                    child: Text(
                      "شروع!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () =>
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => info())),
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "انصراف!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(116, 116, 191, 1.0),
                      Color.fromRGBO(52, 138, 199, 1.0)
                    ]),
                  )
                ],
              ).show();},
              child:  CircleAvatar(
                                radius: 80,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  maxRadius: 70,
                                  minRadius: 70,
                                  backgroundImage:
                                      AssetImage('assest/musique).jpg'),
                                )
                                    .animate()
                                    .animate()
                                    .animate()
                                    .fade(delay: 500.ms)
                                    .slideY(curve: ElasticInOutCurve())
                                    .then()
                                    .shake(),
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  )),
        ),
      ),
    );
  }
}

List listOfStrings = [
  'Home',
  'Best Score',
  'Settings',
];
List listoficons = [
Icons.home_rounded,
Icons.school_outlined,
Icons.settings
];
