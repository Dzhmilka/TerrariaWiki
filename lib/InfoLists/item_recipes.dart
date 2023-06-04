import 'package:flutter/material.dart';
import 'package:terraria_wiki/Variables/app_colors.dart';
import 'package:terraria_wiki/Variables/button_names.dart';
import 'package:terraria_wiki/Variables/image_names.dart';

class ItemRecipes {
  final String itemName;
  final String icon;
  final Column? recipe1;
  final Column? workStation;

  ItemRecipes({required this.itemName, required this.icon, this.recipe1, this.workStation});
}

double recipesWidth = 4;

List<ItemRecipes> itemRecipes = [
  ItemRecipes(
    itemName: ButtonNames.cactusPickaxeText,
    icon: ImageNames.cactusPickaxe,
    recipe1: Column(
      children: [
        Row(
          children: [
            Image.asset(ImageNames.cactus),
            SizedBox(width: recipesWidth),
            const Text(
              ButtonNames.cactusText,
              style: TextStyle(color: AppColors.textColor),
            )
          ],
        ),
      ],
    ),
  ),
];

ItemRecipes? getRecipe(String? itemName){
  for (ItemRecipes item in itemRecipes) {
    if (itemName == item.itemName) {
      if (item.recipe1 != null) {
        return item;
      }
    }
  }
  return null;
}