import 'package:flutter/material.dart';
import 'package:toku_app/widgets/item.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff47312b),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),

        // body: ListView.builder(
        //   itemCount: numbers.length,
        //   itemBuilder: (context, index) {
        //     return Item(number: numbers[index]);
        //   },
        // ),
      ),
      body: const Placeholder(),
    );
  }
}
