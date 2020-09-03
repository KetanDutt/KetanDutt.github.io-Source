import "package:flutter/material.dart";
import 'dart:async';
import 'index.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 1000), () {
      // set your desired delay time here
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF111111), Color(0xFF333333)],
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(1.0, 0.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(80)),
          child: Image.asset(
            "profilepic.jpg",
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}
