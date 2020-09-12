import "package:flutter/material.dart";
import 'dart:async';
import 'index.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  dispose() {
    animationController.dispose(); // you need this
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 7),
    );

    animationController.repeat();
    Timer(Duration(seconds: 1), () {
      // set your desired delay time here
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF111111), Color(0xFF333333)],
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(1.0, 0.0),
          ),
        ),
        child: AnimatedBuilder(
          animation: animationController,
          child: Image.asset(
            "loader.png",
            width: 50,
            height: 50,
          ),
          builder: (BuildContext context, Widget _widget) {
            return new Transform.rotate(
              angle: animationController.value * 15,
              child: _widget,
            );
          },
        ),
      ),
    );
  }
}
