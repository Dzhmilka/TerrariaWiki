import 'package:flutter/material.dart';
import 'package:terraria_wiki/info_lists/all_items_lists.dart';
import 'package:terraria_wiki/info_lists/all_items_class.dart';

class SearchButtons {
  final Image icon;
  final Text buttonText;

  SearchButtons({required this.icon, required this.buttonText});
}

List<SearchButtons> getSearchButtons(String searchText) {
  List<SearchButtons> searchButtons = [];
  for (AllItems item in allItems) {
    if (item.itemName.data!.toLowerCase().contains(searchText.toLowerCase())) {
      searchButtons.add(SearchButtons(icon: item.icon, buttonText: item.itemName));
    }
  }
  return searchButtons;
}