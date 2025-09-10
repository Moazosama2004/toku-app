import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/phrase_item.dart';

class Item extends StatelessWidget {
  const Item({
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
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            color: const Color(0xfffef5da),
            child: Image.asset(itemModel.image!),
          ),
          Expanded(
            child: SizedBox(
              child: PhraseItem(itemModel: itemModel, color: color),
            ),
          ),
        ],
      ),
    );
  }
}
