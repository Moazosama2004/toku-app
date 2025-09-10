import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final NumberModel number;

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
            child: Image.asset(number.image),
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
                      Text(
                        number.jp,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        number.en,
                        style: TextStyle(color: Colors.white),
                      ),
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
