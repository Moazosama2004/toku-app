import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String en;
  final String jp;
  final String sound;

  const ItemModel({
    this.image,
    required this.en,
    required this.jp,
    required this.sound,
  });

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
