class WikiLinks {
  static const String mainLink = 'https://terraria.wiki.gg/wiki/Terraria_Wiki';
  static const String toolsLink = 'https://terraria.wiki.gg/wiki/Tools';
  static const String weaponsLink = 'https://terraria.wiki.gg/wiki/Weapons';
  static const String ammunitionLink = 'https://terraria.wiki.gg/wiki/Ammunition_items';

  static const String cactusPickaxeLink = 'https://terraria.wiki.gg/wiki/Cactus_Pickaxe';
  static const String copperPickaxeLink = 'https://terraria.wiki.gg/wiki/Copper_Pickaxe';
  static const String tinPickaxeLink = 'https://terraria.wiki.gg/wiki/Tin_Pickaxe';
  static const String ironPickaxeLink = 'https://terraria.wiki.gg/wiki/Iron_Pickaxe';
  static const String leadPickaxeLink = 'https://terraria.wiki.gg/wiki/Lead_Pickaxe';
  static const String silverPickaxeLink = 'https://terraria.wiki.gg/wiki/Silver_Pickaxe';
  static const String titaniumDrillLink = 'https://terraria.wiki.gg/wiki/Titanium_Drill';

  static const String copperAxeLink = 'https://terraria.wiki.gg/wiki/Copper_Axe';
  static const String tinAxeLink = 'https://terraria.wiki.gg/wiki/Tin_Axe';
  static const String ironAxeLink = 'https://terraria.wiki.gg/wiki/Iron_Axe';
  static const String leadAxeLink = 'https://terraria.wiki.gg/wiki/Lead_Axe';
  static const String silverAxeLink = 'https://terraria.wiki.gg/wiki/Silver_Axe';
  static const String tungstenAxeLink = 'https://terraria.wiki.gg/wiki/Tungsten_Axe';
  static const String goldAxeLink = 'https://terraria.wiki.gg/wiki/Gold_Axe';
  static const String platinumAxeLink = 'https://terraria.wiki.gg/wiki/Platinum_Axe';
  static const String cobaltChainsawLink = 'https://terraria.wiki.gg/wiki/Cobalt_Chainsaw';
  static const String butchersChainsawLink = 'https://terraria.wiki.gg/wiki/Butcher%27s_Chainsaw';
}

String getLink(int mainIndex) {
  if (mainIndex == 0) {
    return WikiLinks.toolsLink;
  }
  else if (mainIndex == 1) {
    return WikiLinks.weaponsLink;
  }
  else {
    return WikiLinks.ammunitionLink;
  }
}