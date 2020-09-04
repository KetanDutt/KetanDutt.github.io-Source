import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<MyHomePage> {
  String desc = "A Passionate Developer from India";
  double iconSize = 40;
  double iconSpace = 40;

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Image.asset(
                "profilepic.jpg",
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Ketan Dutt",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: iconSpace,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Connect with me",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            _launchURL("mailto:ketan6196@gmail.com");
                          },
                          child: Image.asset(
                            "gmail.png",
                            width: iconSize,
                            height: iconSize,
                          )),
                      SizedBox(
                        width: iconSpace,
                      ),
                      GestureDetector(
                          onTap: () {
                            _launchURL("https://github.com/KetanDutt");
                          },
                          child: Image.asset(
                            "github.png",
                            width: iconSize,
                            height: iconSize,
                          )),
                      SizedBox(
                        width: iconSpace,
                      ),
                      GestureDetector(
                          onTap: () {
                            _launchURL("https://www.instagram.com/k10.dutt/");
                          },
                          child: Image.asset(
                            "instagram.png",
                            width: iconSize,
                            height: iconSize,
                          )),
                      SizedBox(
                        width: iconSpace,
                      ),
                      GestureDetector(
                          onTap: () {
                            _launchURL(
                                "https://www.linkedin.com/in/ketan-dutt-006104b7/");
                          },
                          child: Image.asset(
                            "linkedin.png",
                            width: iconSize,
                            height: iconSize,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
