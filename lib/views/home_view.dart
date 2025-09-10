import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:toku_app/views/colors_view.dart';
import 'package:toku_app/views/family_members_view.dart';
import 'package:toku_app/views/numbers_view.dart';
import 'package:toku_app/views/phrases_view.dart';
import 'package:toku_app/widgets/category_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef5da),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff47312b),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffef9137),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NumbersView(),
                ),
              );
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff568a35),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FamilyMembersView(),
                ),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff78339e),
            onTap: () {
              log('colors');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ColorsView(),
                ),
              );
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff4fadc8),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhrasesView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
