import 'package:flutter/material.dart';
import 'package:terraria_wiki/InfoLists/favorite_list.dart';
import 'package:terraria_wiki/Variables/app_colors.dart';
import 'package:terraria_wiki/Screens/item_screen.dart';
import 'package:terraria_wiki/InfoLists/favorite_buttons.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  FavoritesManager favoritesManager = FavoritesManager();
  List<FavoriteButtons> favoriteButtons = [];

  @override
  void initState() {
    super.initState();
    getFavoriteItems();
  }

  Future<void> getFavoriteItems() async {
    List<FavoriteButtons> buttons =
    await getFavoriteButtons(favoritesManager.getFavorites());
    setState(() {
      favoriteButtons.addAll(buttons);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.fromLTRB(16, 42, 16, 16)),
          const Center(
            child: Text(
              'Улюблені',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            shrinkWrap: true,
            itemCount: favoriteButtons.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return AppColors.primaryColor.withOpacity(0.6);
                      }
                      return null;
                    }),
                    backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
                    textStyle: MaterialStateProperty.all<TextStyle> (
                      const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size> (
                      const Size (200,50),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return ItemScreen(itemName: favoriteButtons[index].buttonText.data);
                        }
                      )
                    );
                  },
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      Expanded(
                          flex: 1,
                          child: favoriteButtons[index].icon
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                          flex: 9,
                          child: Text(
                            favoriteButtons[index].buttonText.data!,
                            style: const TextStyle(color: AppColors.textColor),
                          ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
