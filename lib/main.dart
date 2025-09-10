import 'package:flutter/material.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef5da),
      appBar: AppBar(
        title: Text('Toku', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff47312b),
      ),
      body: Column(
        children: [
          Container(
            height: 65,
            width: double.infinity,
            color: Color(0xffef9137),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Numbers',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Container(
            height: 65,
            width: double.infinity,
            color: Color(0xff568a35),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Family Members',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Container(
            height: 65,
            width: double.infinity,
            color: Color(0xff78339e),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Colors',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Container(
            height: 65,
            width: double.infinity,
            color: Color(0xff4fadc8),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Phrases',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
