import 'package:flutter/material.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff47312b),
        leading: Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: Column(
        children: [
          NumberItem(),
          NumberItem(),
          NumberItem(),
          NumberItem(),
        ],
      ),
    );
  }
}

class NumberItem extends StatelessWidget {
  const NumberItem({super.key});

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
            child: Image.asset(
              'assets/images/numbers/number_one.png',
            ),
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
                        'ichi',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'one',
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
