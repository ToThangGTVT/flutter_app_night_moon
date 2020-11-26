import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: RandomWords(),
        theme: ThemeData(fontFamily: 'Cabin'),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return new Scaffold(
      body: new Stack(
        children: [
          new ClipPath(
            clipper: MyCliper(),
            child: Container(
              height: height * 0.65,
              padding: EdgeInsets.all(50),
              width: double.infinity,
              child: SvgPicture.asset('assets/images/splash.svg'),
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topRight,
                      colors: [
                    Color.fromRGBO(249, 240, 227, 1),
                    Color.fromRGBO(250, 248, 245, 1)
                  ]),
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset('assets/images/logo.svg'),
            )
          ),
          new Container(
            padding: EdgeInsets.only(top: 55, right: 110),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('Night', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(63, 65, 78, 11)),
              ),
            )
          ),
          new Container(
              padding: EdgeInsets.only(top: 55, left: 110),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text('Moon', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(63, 65, 78, 1)),
                ),
              )
          ),
          new Container(
            padding: EdgeInsets.only(top: height * 0.65),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('CÙNG THƯ GIÃN',
                style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(63, 65, 78, 1),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: height * 0.70, left: 50, right: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('Mình sẽ giúp bạn thư giãn sau một ngày làm việc '
                  'căng thẳng ❤❤',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(161, 164, 178, 1),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          new GestureDetector(
            onTap: () {print('object');},
            child: new Container(
              margin: EdgeInsets.only(top: height * 0.8, left: 30, right: 30),
              height: 50,
              width: width - 60,
              padding: EdgeInsets.all(15),
              child: Text('ĐI NGAY THÔI',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Cabin',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromRGBO(142, 151, 253, 1),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(142, 151, 253, 0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: height * 0.89, left: 50, right: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('Liên hệ với mình',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(161, 164, 178, 1),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

        ],
    ));
  }
}

class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
