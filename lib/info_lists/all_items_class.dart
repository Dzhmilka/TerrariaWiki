import 'package:flutter/material.dart';

class AllItems {
  final Image icon;
  final Text itemName;
  final IconButton itemLink;
  final Row? pickaxeStrength;
  final Row? hammerStrength;
  final Row? axeStrength;
  final Text? damage;
  final Text? knockback;
  final Text? bonus;
  final Text? criticalChance;
  final Text? useTime;
  final Text? velocity;
  final Text? toolSpeed;
  final Text? toolTip;
  final Stack? rarity;
  final Row? buy;
  final Row? sell;
  final Text? research;
  final Text description;

  AllItems({
    required this.icon,
    required this.itemName,
    required this.itemLink,
    this.pickaxeStrength,
    this.hammerStrength,
    this.axeStrength,
    this.damage,
    this.knockback,
    this.bonus,
    this.criticalChance,
    this.useTime,
    this.velocity,
    this.toolSpeed,
    this.toolTip,
    this.rarity,
    this.buy,
    this.sell,
    this.research,
    required this.description
  });
}
