import 'package:flutter/material.dart';
import 'package:terraria_wiki/InfoLists/all_items_lists.dart';
import 'package:terraria_wiki/Variables/app_colors.dart';
import 'package:terraria_wiki/InfoLists/favorite_list.dart';

class ItemScreen extends StatefulWidget {
  final String? itemName;
  const ItemScreen({Key? key, required this.itemName}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  late ItemData _itemData;
  bool isFavorite = false;
  FavoritesManager favoritesManager = FavoritesManager();

  Future<void> loadFavorites() async {
    List<String> favorites = (await favoritesManager.getFavorites()).cast<String>();
    setState(() {
      isFavorite = favorites.contains(widget.itemName);
    });
  }

  void toggleFavorite() async {
    if (isFavorite) {
      await favoritesManager.removeFromFavorites(widget.itemName!);
    } else {
      await favoritesManager.addToFavorites(widget.itemName!);
    }
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  void initState() {
    super.initState();
    _itemData = getItem(widget.itemName);
    loadFavorites();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 52, 4, 12),
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: _itemData.widgets[0]
                  ),
                  Expanded(
                      child: _itemData.widgets[1]
                  ),
                  Expanded(
                      child: IconButton(
                        icon: Icon(isFavorite ? Icons.bookmark_added_rounded : Icons.bookmark_border_rounded, size: 28,),
                        onPressed: toggleFavorite,
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      _itemData.widgets[2],
                      if (_itemData.tool)
                        Column(
                            children: [
                              const SizedBox(height: 16,),
                              _itemData.widgets[3],
                              const SizedBox(height: 10,),
                            ]
                        )
                      else
                        const SizedBox(height: 20),
                      ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _itemData.tool ? _itemData.widgets.length - 5 : _itemData.widgets.length - 4,
                          separatorBuilder: (context, index) => Container(
                            height: 1,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            dynamic widget = _itemData.tool ? _itemData.widgets[index + 4] : _itemData.widgets[index + 3];
                            return Column(
                              children: [
                                const SizedBox(height: 6,),
                                widget,
                                const SizedBox(height: 6,),
                              ],
                            );
                          }
                      ),
                      Container(
                        height: 1,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SizedBox(
                child: _itemData.widgets.last,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
