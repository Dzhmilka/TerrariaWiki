import 'package:flutter/material.dart';
import 'package:terraria_wiki/Variables/app_colors.dart';
import 'package:terraria_wiki/InfoLists/main_buttons.dart';
import 'Screens/main_screen.dart';

void main() {
  List<MainButtons> infoList = getData();
  runApp(MyApp(mainButtonsList: infoList,));
}

class MyApp extends StatelessWidget {
  final List<MainButtons> mainButtonsList;
  const MyApp({Key? key, required this.mainButtonsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textSelectionTheme: const TextSelectionThemeData(cursorColor: AppColors.primaryColor)
      ),
      home: MainScreen(infoList: mainButtonsList),
    );
  }
}
