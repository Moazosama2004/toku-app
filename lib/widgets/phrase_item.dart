import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    super.key,
    required this.itemModel,
    required this.color,
  });
  final ItemModel itemModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  itemModel.jp,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  itemModel.en,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              itemModel.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
