import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';

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
      body: Column(
        children: List.generate(
          numbers.length,
          (index) => NumberItem(
            image: numbers[index].image,
            en: numbers[index].en,
            jp: numbers[index].jp,
          ),
        ),
      ),
    );
  }
}

class NumberItem extends StatelessWidget {
  const NumberItem({
    super.key,
    required this.image,
    required this.en,
    required this.jp,
  });
  final String image;
  final String en;
  final String jp;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffef9137),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Color(0xfffef5da),
            child: Image.asset(image),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(jp, style: TextStyle(color: Colors.white)),
                      Text(en, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
