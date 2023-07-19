import 'package:flutter/material.dart';
import 'package:new_quiz/info%20page.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
    home:homepage1() ,
  ));
}


class homepage1 extends StatefulWidget {
  const homepage1({Key? key}) : super(key: key);

  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
  List<String> images = [
    "assest/astronaut.png",
    "assest/art.jpg",
    "assest/droit.jpg",
    "assest/geography.jpg",
    "assest/history).jpg",
    "assest/jeu.jpg",
    "assest/math.jpg",
    "assest/musique).jpg",
    'assest/mythologie.jpg',
    'assest/noncatagori.jpg',
    'assest/science.jpg',
    'assest/sport.jpg',
    'assest/technology.png'
  ];
  Widget customcard(String lang, String image) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => info(),
          ));
        },
        child: Material(
          color: Colors.blueGrey[900],
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 120,
                        width: 120,
                        padding: EdgeInsets.all(5.0),
                        child: ClipOval(child: Image(image: AssetImage(image))),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(lang),
                  )
                ],
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaeaea),
      body: ListView(
        children: [
          customcard('Art', images[0]),
          customcard('Art', images[1]),
          customcard('Art', images[2]),
          customcard('Art', images[3]),
          customcard('Art', images[4]),
          customcard('Art', images[5]),
          customcard('Art', images[6]),
          customcard('Art', images[7]),
          customcard('Art', images[8]),
          customcard('Art', images[9]),
          customcard('Art', images[10]),
          customcard('Art', images[11]),
          customcard('Art', images[12]),
        ],
      ),
    );
  }
}
