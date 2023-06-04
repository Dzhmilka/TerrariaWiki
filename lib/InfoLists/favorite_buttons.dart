import 'package:flutter/material.dart';
import 'package:terraria_wiki/InfoLists/all_items_lists.dart';
import 'package:terraria_wiki/InfoLists/all_items_class.dart';

class FavoriteButtons {
  final Image icon;
  final Text buttonText;

  FavoriteButtons({required this.icon, required this.buttonText});
}

Future<List<FavoriteButtons>> getFavoriteButtons(Future<List<String>> favoriteNamesFuture) async {
  List<String> favoriteNames = await favoriteNamesFuture;
  List<FavoriteButtons> favoriteButtons = [];
  for (String favorite in favoriteNames) {
    for (AllItems item in allItems) {
      if (item.itemName.data == favorite) {
        favoriteButtons.add(FavoriteButtons(icon: item.icon, buttonText: item.itemName));
      }
    }
  }
  return favoriteButtons;
}