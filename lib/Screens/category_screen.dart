import 'package:flutter/material.dart';
import 'package:terraria_wiki/Screens/search_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:terraria_wiki/Variables/app_colors.dart';
import 'package:terraria_wiki/InfoLists/category_buttons.dart';
import 'package:terraria_wiki/Variables/wiki_links.dart';
import 'package:terraria_wiki/Screens/item_screen.dart';
import 'package:terraria_wiki/Screens/favorite_screen.dart';

class CategoryScreen extends StatefulWidget {
  final int mainIndex;
  final int categoryIndex;
  const CategoryScreen({Key? key, required this.mainIndex, required this.categoryIndex}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<CategoryButtons> itemList = [];
  String headText = '';

  @override
  void initState() {
    super.initState();
    itemList = getItemsData(widget.mainIndex, widget.categoryIndex);
    headText = getHeaderCategory(widget.mainIndex, widget.categoryIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.fromLTRB(16, 52, 4, 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onSubmitted: (String searchText) {
                      _searchController.clear();
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) => SearchScreen(searchText: searchText)
                          )
                      );
                    },
                    decoration: InputDecoration(
                      labelText: 'Пошук',
                      labelStyle: const TextStyle(
                        color: AppColors.primaryColor,
                      ),
                      prefixIcon: const Icon(Icons.search, color: AppColors.primaryColor,),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: AppColors.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: const OutlineInputBorder (
                        borderSide: BorderSide(
                          color: AppColors.primaryColor,
                        ),
                      )
                  ),
                ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.public, size: 28),
                  onPressed: () {
                    final Uri wiki = Uri.parse(getLink(widget.mainIndex));
                    launchUrl(wiki);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.bookmark_rounded, size: 28),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) => const FavoriteScreen())
                    );
                  },
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              headText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              shrinkWrap: true,
              itemCount: itemList.length,
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
                            return ItemScreen(itemName: itemList[index].buttonText.data);
                          }
                        )
                      );
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 8),
                        Expanded(
                            flex: 1,
                            child: itemList[index].icon
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                            flex: 9,
                            child: itemList[index].buttonText
                        ),
                      ],
                    ),
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
