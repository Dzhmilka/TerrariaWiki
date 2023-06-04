import 'package:flutter/material.dart';
import 'package:terraria_wiki/Variables/app_colors.dart';
import 'package:terraria_wiki/Screens/item_screen.dart';
import 'package:terraria_wiki/InfoLists/search_buttons.dart';
import 'package:terraria_wiki/Screens/favorite_screen.dart';

class SearchScreen extends StatefulWidget {
  final String searchText;
  const SearchScreen({Key? key, required this.searchText}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<SearchButtons> itemList = [];

  @override
  void initState() {
    super.initState();
    itemList = getSearchButtons(widget.searchText);
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
                    onSubmitted: (String updatedText) {
                      _searchController.clear();
                      setState(() {
                        itemList = getSearchButtons(updatedText);
                      });
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
          const Center(
            child: Text(
              'Знайдені предмети',
              style: TextStyle(
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
                            child: Text(
                              itemList[index].buttonText.data!,
                              style: const TextStyle(color: AppColors.textColor),
                            ),
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
