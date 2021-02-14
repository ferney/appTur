//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/services.dart';
import 'main2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new BackgroundVideo(),
      title: new Text(
        'GUÍA TURISTICA',
        textScaleFactor: 2,
      ),
      image: new Image.asset('assets/coffee_logo.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
