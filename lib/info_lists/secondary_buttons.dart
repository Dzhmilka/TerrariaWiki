import 'package:flutter/material.dart';
import 'package:terraria_wiki/variables/image_names.dart';
import 'package:terraria_wiki/variables/app_colors.dart';
import 'package:terraria_wiki/variables/button_names.dart';

class SecondaryButtons {
  final Image icon1;
  final Image icon2;
  final Text buttonText;

  SecondaryButtons({required this.icon1, required this.buttonText, required this.icon2});
}

List<SecondaryButtons> getCategoryData(int index) {
  double fontSize = 18;
  if (index == 0) {
    List<SecondaryButtons> toolsList = [
      SecondaryButtons(
          icon1: Image.asset(
            ImageNames.ironPickaxe,
          ),
          buttonText: Text(ButtonNames.pickaxes,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: fontSize,
              )
          ),
          icon2: Image.asset(
            ImageNames.titaniumDrill,
          )
      ),
      SecondaryButtons(
          icon1: Image.asset(
            ImageNames.cobaltChainsaw,
          ),
          buttonText: Text(ButtonNames.axes,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: fontSize,
              )
          ),
          icon2: Image.asset(
            ImageNames.platinumAxe,
          )
      ),
      SecondaryButtons(
          icon1: Image.asset(
            ImageNames.tungstenHummer,
          ),
          buttonText: Text(ButtonNames.hammers,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: fontSize,
              )
          ),
          icon2: Image.asset(
            ImageNames.holyHummer,
          )
      ),
    ];

    return toolsList;
  }
  else if (index == 1) {
    List<SecondaryButtons> weaponsList = [

    ];

    return weaponsList;
  }
  else {
    return [];
  }
}

String getHeader(int index) {
  if (index == 0) {
    return ButtonNames.tools;
  }
  else if (index == 1) {
    return ButtonNames.weapons;
  }
  else if (index == 2) {
    return ButtonNames.ammunition;
  }
  else {
    return 'Not found';
  }
}