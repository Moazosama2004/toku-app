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
    ),
    NumberModel(
      en: 'two',
      jp: 'ni',
      image: 'assets/images/numbers/number_two.png',
    ),
    NumberModel(
      en: 'three',
      jp: 'san',
      image: 'assets/images/numbers/number_three.png',
    ),
    NumberModel(
      en: 'four',
      jp: 'shi',
      image: 'assets/images/numbers/number_four.png',
    ),
    NumberModel(
      en: 'five',
      jp: 'go',
      image: 'assets/images/numbers/number_five.png',
    ),
    NumberModel(
      en: 'six',
      jp: 'roku',
      image: 'assets/images/numbers/number_six.png',
    ),
    NumberModel(
      en: 'seven',
      jp: 'shichi',
      image: 'assets/images/numbers/number_seven.png',
    ),
    NumberModel(
      en: 'eight',
      jp: 'hachi',
      image: 'assets/images/numbers/number_eight.png',
    ),
    NumberModel(
      en: 'nine',
      jp: 'kyuu',
      image: 'assets/images/numbers/number_nine.png',
    ),
    NumberModel(
      en: 'ten',
      jp: 'juu',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff47312b),
        leading: Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: ListView(
        children: generateNumbers(numbers),
        // children: List.generate(
        //   numbers.length,
        //   (index) => NumberItem(number: numbers[index]),
        // ),
      ),
    );
  }
}

List<Item> generateNumbers(List<NumberModel> numberModels) {
  List<Item> numberItems = [];
  for (NumberModel numberModel in numberModels) {
    numberItems.add(Item(number: numberModel));
  }
  return numberItems;
}
