import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(Mogotes());
}

class Mogotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
