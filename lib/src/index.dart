import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xFF111111), Color(0xFF333333)],
        begin: const FractionalOffset(0.0, 1.0),
        end: const FractionalOffset(1.0, 0.0),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(80)),
              child: Image.asset(
                "profilepic.jpg",
                width: 150,
                height: 150,
              )),
          SizedBox(
            height: 50,
          ),
          Text(
            "Ketan Dutt",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ));
  }
}
