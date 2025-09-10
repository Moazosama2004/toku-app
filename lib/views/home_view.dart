import 'package:flutter/material.dart';
import 'package:toku_app/widgets/category_item.dart';

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
          Category(
            text: 'Numbers',
            color: Color(0xffef9137),
            onTap: () {
              print('pressed');
            },
          ),
          Category(
            text: 'Family Members',
            color: Color(0xff568a35),
            onTap: () {
              print('pressed');
            },
          ),
          Category(
            text: 'Colors',
            color: Color(0xff78339e),
            onTap: () {
              print('pressed');
            },
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff4fadc8),
            onTap: () {
              print('pressed');
            },
          ),
        ],
      ),
    );
  }
}
