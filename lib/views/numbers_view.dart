import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';
import 'package:toku_app/widgets/item.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});
  final List<NumberModel> numbers = const [
    NumberModel(
      en: 'one',
      jp: 'ichi',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    NumberModel(
      en: 'two',
      jp: 'ni',
      image: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    NumberModel(
      en: 'three',
      jp: 'san',
      image: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    NumberModel(
      en: 'four',
      jp: 'shi',
      image: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    NumberModel(
      en: 'five',
      jp: 'go',
      image: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    NumberModel(
      en: 'six',
      jp: 'roku',
      image: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    NumberModel(
      en: 'seven',
      jp: 'shichi',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    NumberModel(
      en: 'eight',
      jp: 'hachi',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    NumberModel(
      en: 'nine',
      jp: 'kyuu',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    NumberModel(
      en: 'ten',
      jp: 'juu',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
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
        leading: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(number: numbers[index]);
        },
      ),
    );
  }
}
