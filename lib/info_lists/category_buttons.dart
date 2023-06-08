import 'package:flutter/material.dart';
import 'package:terraria_wiki/variables/image_names.dart';
import 'package:terraria_wiki/variables/app_colors.dart';
import 'package:terraria_wiki/variables/button_names.dart';

class CategoryButtons {
  final Image icon;
  final Text buttonText;

  CategoryButtons({required this.icon, required this.buttonText});
}

List<CategoryButtons> getItemsData(int mainIndex, int categoryIndex) {
  if (mainIndex == 0) {
    if (categoryIndex == 0) {
      List<CategoryButtons> pickaxeList = [
        CategoryButtons(icon: Image.asset(ImageNames.cactusPickaxe,), buttonText: const Text(
            ButtonNames.cactusPickaxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.copperPickaxe,), buttonText: const Text(
            ButtonNames.copperPickaxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.tinPickaxe,), buttonText: const Text(
            ButtonNames.tinPickaxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.ironPickaxe,), buttonText: const Text(
            ButtonNames.ironPickaxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.leadPickaxe,), buttonText: const Text(
            ButtonNames.leadPickaxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.silverPickaxe,), buttonText: const Text(
            ButtonNames.silverPickaxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
        )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.titaniumDrill,), buttonText: const Text(
            ButtonNames.titaniumDrillText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
      ];

      return pickaxeList;
    }
    if (categoryIndex == 1) {
      List<CategoryButtons> axeList = [
        CategoryButtons(icon: Image.asset(ImageNames.copperAxe,), buttonText: const Text(
            ButtonNames.copperAxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.tinAxe,), buttonText: const Text(
            ButtonNames.tinAxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.ironAxe,), buttonText: const Text(
            ButtonNames.ironAxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.leadAxe,), buttonText: const Text(
            ButtonNames.leadAxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.silverAxe,), buttonText: const Text(
            ButtonNames.silverAxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.tungstenAxe,), buttonText: const Text(
            ButtonNames.tungstenAxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.goldAxe,), buttonText: const Text(
            ButtonNames.goldAxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.platinumAxe,), buttonText: const Text(
            ButtonNames.platinumAxeText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.cobaltChainsaw,), buttonText: const Text(
            ButtonNames.cobaltChainsawText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
        CategoryButtons(icon: Image.asset(ImageNames.butchersChainsaw,), buttonText: const Text(
            ButtonNames.butchersChainsawText,
            style: TextStyle(
              color: AppColors.textColor,
            )
          )
        ),
      ];

      return axeList;
    }
    else {
      return [];
    }
  }
  else {
    return [];
  }
}

String getHeaderCategory(int mainIndex, int categoryIndex) {
  if (mainIndex == 0) {
    if (categoryIndex == 0) {
      return ButtonNames.pickaxes;
    }
    else if (categoryIndex == 1) {
      return ButtonNames.axes;
    }
    else if (categoryIndex == 2) {
      return ButtonNames.hammers;
    }
    else if (categoryIndex == 3) {
      return ButtonNames.wires;
    }
  }
  return '';
}