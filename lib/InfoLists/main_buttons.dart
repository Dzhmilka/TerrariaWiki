import 'package:flutter/material.dart';
import 'package:terraria_wiki/Variables/image_names.dart';
import 'package:terraria_wiki/Variables/app_colors.dart';
import 'package:terraria_wiki/Variables/button_names.dart';

class MainButtons {
  final Image icon1;
  final Text buttonText;

  MainButtons({required this.icon1, required this.buttonText});
}

List<MainButtons> getData() {
  List<MainButtons> mainButtonsList = [
    MainButtons(
        icon1: Image.asset(ImageNames.tools, scale: 0.8,),
        buttonText: const Text(
        ButtonNames.tools,
        style: TextStyle(
          color: AppColors.textColor,
        )
      )
    ),
    MainButtons(
        icon1: Image.asset(ImageNames.weapons, scale: 0.8,),
        buttonText: const Text(
        ButtonNames.weapons,
        style: TextStyle(
          color: AppColors.textColor,
        )
      )
    ),
    MainButtons(
        icon1: Image.asset(ImageNames.ammunition, scale: 0.8,),
        buttonText: const Text(
        ButtonNames.ammunition,
        style: TextStyle(
          color: AppColors.textColor,
        )
      )
    ),
  ];

  return mainButtonsList;
}