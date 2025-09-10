import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/item.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});

  final List<ItemModel> colors = const [
    ItemModel(
      en: 'black',
      jp: 'kuro',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      en: 'brown',
      jp: 'chairo',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      en: 'dusty yellow',
      jp: 'usuzumiiro',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      en: 'gray',
      jp: 'haiiro',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      en: 'green',
      jp: 'midori',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      en: 'red',
      jp: 'aka',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      en: 'white',
      jp: 'shiro',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      en: 'yellow',
      jp: 'kiiro',
      image: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff47312b),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(
            itemModel: colors[index],
            color: const Color(0xff78339e),
          );
        },
      ),
    );
  }
}
