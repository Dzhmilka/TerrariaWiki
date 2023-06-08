import 'package:flutter/material.dart';
import 'package:terraria_wiki/screens/search_screen.dart';
import 'package:terraria_wiki/variables/wiki_links.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:terraria_wiki/variables/app_colors.dart';
import 'package:terraria_wiki/info_lists/secondary_buttons.dart';
import 'package:terraria_wiki/screens/category_screen.dart';
import 'package:terraria_wiki/screens/favorite_screen.dart';

class SecondScreen extends StatefulWidget {
  final int mainIndex;
  const SecondScreen({Key? key, required this.mainIndex}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<SecondaryButtons> categoryList = [];
  String headText = '';

  @override
  void initState() {
    super.initState();
    categoryList = getCategoryData(widget.mainIndex);
    headText = getHeader(widget.mainIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.fromLTRB(16, 52, 4, 16),
            child: Row(
              children: [
                Expanded(child: TextField(
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
                          color: Colors.grey,
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
          ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              physics: const ScrollPhysics(parent: null),
              shrinkWrap: true,
              itemCount: categoryList.length,
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
                            return CategoryScreen(
                                mainIndex: widget.mainIndex, categoryIndex: index
                            );
                          }
                        )
                      );
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Expanded(
                            flex: 1,
                            child: SizedBox(
                                height: 32,
                                width: 32,
                                child: categoryList[index].icon1
                            ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              child: categoryList[index].buttonText,
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: SizedBox(
                                height: 32,
                                width: 32,
                                child: categoryList[index].icon2
                            ),
                        ),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}
