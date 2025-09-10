import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/item.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});

  final List<ItemModel> familyMembers = const [
    ItemModel(
      en: 'father',
      jp: 'chichi',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      en: 'mother',
      jp: 'haha',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      en: 'grandfather',
      jp: 'sofu',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grand_father.wav',
    ),
    ItemModel(
      en: 'grandmother',
      jp: 'sobo',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grand_mother.wav',
    ),
    ItemModel(
      en: 'son',
      jp: 'musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      en: 'daughter',
      jp: 'musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      en: 'older brother',
      jp: 'ani',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older_brother.wav',
    ),
    ItemModel(
      en: 'older sister',
      jp: 'ane',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older_sister.wav',
    ),
    ItemModel(
      en: 'younger brother',
      jp: 'otouto',
      image:
          'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger_brother.wav',
    ),
    ItemModel(
      en: 'younger sister',
      jp: 'imouto',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger_sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          'Family Members',
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
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Item(
            itemModel: familyMembers[index],
            color: const Color(0xff568a35),
          );
        },
      ),
    );
  }
}
