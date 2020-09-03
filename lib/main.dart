import 'package:flutter/material.dart';
import 'src/splash_screen.dart';

void main() {
  Paint.enableDithering = true;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ketan Dutt",
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF111111),
        backgroundColor: Color(0xFF111111),
        primaryIconTheme: new IconThemeData(color: Colors.black),
      ),
    );
  }
}
