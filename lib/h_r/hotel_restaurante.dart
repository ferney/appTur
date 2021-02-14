import 'package:flutter/material.dart';
import 'uno.dart';
import 'segundo.dart';
import 'tres.dart';

class TabsTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        //para poner color al banner
        primaryColor: const Color(0xffb55e28),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('DIRECTORIO',
                style: TextStyle(color: Color(0xffffd544), fontSize: 20)),
            bottom: TabBar(
              tabs: [Tab(text: "MOGOTES"), Tab(text: ""), Tab(text: "")],
            ),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
