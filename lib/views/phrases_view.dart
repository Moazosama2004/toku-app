import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

import 'package:toku_app/widgets/item_info.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});
  final List<ItemModel> phrases = const [
    ItemModel(
      en: 'Are you coming?',
      jp: 'kimasu ka?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      en: 'Don\'t forget to subscribe',
      jp: 'kōdoku suru no o wasurenaide',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      en: 'How are you feeling?',
      jp: 'chōshi wa dō?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      en: 'I love anime',
      jp: 'anime ga daisuki',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      en: 'I love programming',
      jp: 'puroguramingu ga daisuki',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      en: 'Programming is easy',
      jp: 'puroguramingu wa kantan desu',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      en: 'What is your name?',
      jp: 'onamae wa nan desu ka?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      en: 'Where are you going?',
      jp: 'doko ni ikimasu ka?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      en: 'Yes, I\'m coming',
      jp: 'hai, ikimasu',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          'Numbers',
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
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ItemInfo(
            itemModel: phrases[index],
            color: const Color(0xff4fadc8),
          );
        },
      ),
    );
  }
}
