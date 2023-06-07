import 'package:flutter/material.dart';
import 'package:terraria_wiki/InfoLists/all_items_class.dart';
import 'package:terraria_wiki/Variables/app_colors.dart';
import 'package:terraria_wiki/Variables/image_names.dart';
import 'package:terraria_wiki/Variables/button_names.dart';
import 'package:terraria_wiki/Variables/item_descriptions.dart';
import 'package:terraria_wiki/Variables/wiki_links.dart';
import 'package:url_launcher/url_launcher.dart';

const IconData wikiIcon = Icons.public;

List<AllItems> allItems = [
  AllItems(
      icon: Image.asset(ImageNames.cactusPickaxe, scale: 0.8,),
      itemName: const Text(
        ButtonNames.cactusPickaxeText,
        style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
      itemLink: IconButton(
        icon: const Icon(wikiIcon, size: 28),
        onPressed: () {
          final Uri wiki = Uri.parse(WikiLinks.cactusPickaxeLink);
          launchUrl(wiki);
        },
      ),
      pickaxeStrength: Row(
        children: [
          Image.asset(
            ImageNames.pickaxeStrengthImage,
            scale: 1.3,
          ),
          const SizedBox(width: 8),
          const Text(
            '35%',
            style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      hammerStrength: Row(
        children: [
          Image.asset(
            ImageNames.hammerStrengthImage,
            scale: 1.3,
          ),
          const SizedBox(width: 8),
          const Text(
            '0%',
            style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      axeStrength: Row(
        children: [
          Image.asset(
            ImageNames.axeStrengthImage,
            scale: 1.3,
          ),
          const SizedBox(width: 8),
          const Text(
            '0%',
            style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      damage: const Text(
        '4 (ближній бій)',
        style: TextStyle(color: AppColors.textColor),
      ),
      knockback: const Text(
        '2 (дуже слабке)',
        style: TextStyle(color: AppColors.textColor),
      ),
      criticalChance: const Text(
        '4%',
        style: TextStyle(color: AppColors.textColor),
      ),
      useTime: const Text(
        '25 (швидкий)',
        style: TextStyle(color: AppColors.textColor),
      ),
      toolSpeed: const Text(
        '16',
        style: TextStyle(color: AppColors.textColor),
      ),
      rarity: Stack(
        children: [
          Text(
            'Біла',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2
                ..color = Colors.black,
            ),
          ),
          const Text(
            'Біла',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      sell: Row(
        children: [
          const Text(
            '4',
            style: TextStyle(color: AppColors.textColor),
          ),
          const SizedBox(width: 4,),
          Image.asset(ImageNames.silverCoin)
        ],
      ),
      research: const Text(
        '1 одиниця',
        style: TextStyle(
          color: AppColors.researchTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      description: const Text(
        ItemDescriptions.cactusPickaxeDescription,
        overflow: TextOverflow.ellipsis,
        maxLines: 1000,
        style: TextStyle(color: AppColors.textColor),
        textAlign: TextAlign.justify,
      ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.copperPickaxe, scale: 0.8,),
    itemName: const Text(
      ButtonNames.copperPickaxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.copperPickaxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '35%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '4 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '2 (дуже слабке)',
      style: TextStyle(color: AppColors.textColor),
    ),
    bonus: const Text(
      '-1 радіус',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '23 (швидкий)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '15',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    buy: Row(
      children: [
        const Text(
          '5',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin)
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '1',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin)
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.cooperPickaxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.tinPickaxe, scale: 0.8,),
    itemName: const Text(
      ButtonNames.tinPickaxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.tinPickaxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '35%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '5 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '2 (дуже слабке)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '21 (швидкий)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '14',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '1',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin),
        const SizedBox(width: 4,),
        const Text(
          '80',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.copperCoin),
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.tinPickaxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.ironPickaxe, scale: 0.8,),
    itemName: const Text(
      ButtonNames.ironPickaxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.ironPickaxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '40%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '5 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '2 (дуже слабке)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '20 (дуже швидкий)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '13',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '4',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin)
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.ironPickaxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.leadPickaxe, scale: 0.8,),
    itemName: const Text(
      ButtonNames.leadPickaxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.leadPickaxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '43%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '6 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '2 (дуже слабке)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '19 (дуже швидкий)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '12',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '6',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin)
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.leadPickaxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.silverPickaxe, scale: 0.8),
    itemName: const Text(
      ButtonNames.silverPickaxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.silverPickaxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '45%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '6 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '2 (дуже слабке)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '19 (дуже швидкий)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '11',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '10',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin),
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.silverPickaxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.titaniumDrill, scale: 0.8,),
    itemName: const Text(
      ButtonNames.titaniumDrillText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.titaniumDrillLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '190%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '27 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '0.5 (неймовірно слабке)',
      style: TextStyle(color: AppColors.textColor),
    ),
    bonus: const Text(
      '-1 радіус',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '15 (дуже швидкий)',
      style: TextStyle(color: AppColors.textColor),
    ),
    velocity: const Text(
      '32',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '4',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Світло-червона',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Світло-червона',
          style: TextStyle(
            color: Color(0xfffd9595),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '2',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.goldCoin),
        const SizedBox(width: 4,),
        const Text(
          '52',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin)
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.titaniumDrillDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
      icon: Image.asset(ImageNames.copperAxe, scale: 0.8),
      itemName: const Text(
        ButtonNames.copperAxeText,
        style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
      itemLink: IconButton(
        icon: const Icon(wikiIcon, size: 28),
        onPressed: () {
          final Uri wiki = Uri.parse(WikiLinks.copperAxeLink);
          launchUrl(wiki);
        },
      ),
      pickaxeStrength: Row(
        children: [
          Image.asset(
            ImageNames.pickaxeStrengthImage,
            scale: 1.3,
          ),
          const SizedBox(width: 8),
          const Text(
            '0%',
            style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      hammerStrength: Row(
        children: [
          Image.asset(
            ImageNames.hammerStrengthImage,
            scale: 1.3,
          ),
          const SizedBox(width: 8),
          const Text(
            '0%',
            style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      axeStrength: Row(
        children: [
          Image.asset(
            ImageNames.axeStrengthImage,
            scale: 1.3,
          ),
          const SizedBox(width: 8),
          const Text(
            '35%',
            style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      damage: const Text(
        '3 (ближній бій)',
        style: TextStyle(color: AppColors.textColor),
      ),
      knockback: const Text(
        '4.5 (середнє)',
        style: TextStyle(color: AppColors.textColor),
      ),
      bonus: const Text(
        '-1 радіус',
        style: TextStyle(color: AppColors.textColor),
      ),
      criticalChance: const Text(
        '4%',
        style: TextStyle(color: AppColors.textColor),
      ),
      useTime: const Text(
        '30 (середній)',
        style: TextStyle(color: AppColors.textColor),
      ),
      toolSpeed: const Text(
        '21',
        style: TextStyle(color: AppColors.textColor),
      ),
      rarity: Stack(
        children: [
          Text(
            'Біла',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2
                ..color = Colors.black,
            ),
          ),
          const Text(
            'Біла',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      buy: Row(
        children: [
          const Text(
            '4',
            style: TextStyle(color: AppColors.textColor),
          ),
          const SizedBox(width: 4,),
          Image.asset(ImageNames.silverCoin)
        ],
      ),
      sell: Row(
        children: [
          const Text(
            '80',
            style: TextStyle(color: AppColors.textColor),
          ),
          const SizedBox(width: 4,),
          Image.asset(ImageNames.copperCoin)
        ],
      ),
      research: const Text(
        '1 одиниця',
        style: TextStyle(
          color: AppColors.researchTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      description: const Text(
        ItemDescriptions.cooperAxeDescription,
        overflow: TextOverflow.ellipsis,
        maxLines: 1000,
        style: TextStyle(color: AppColors.textColor),
        textAlign: TextAlign.justify,
      ),
  ),
  AllItems(
      icon: Image.asset(ImageNames.tinAxe, scale: 0.8),
      itemName: const Text(
        ButtonNames.tinAxeText,
        style: TextStyle(
            color: AppColors.textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
      itemLink: IconButton(
        icon: const Icon(wikiIcon, size: 28),
        onPressed: () {
          final Uri wiki = Uri.parse(WikiLinks.tinAxeLink);
          launchUrl(wiki);
        },
      ),
      pickaxeStrength: Row(
        children: [
          Image.asset(
            ImageNames.pickaxeStrengthImage,
            scale: 1.3,
          ),
          const SizedBox(width: 8),
          const Text(
            '0%',
            style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      hammerStrength: Row(
        children: [
          Image.asset(
            ImageNames.hammerStrengthImage,
            scale: 1.3,
          ),
          const SizedBox(width: 8),
          const Text(
            '0%',
            style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      axeStrength: Row(
        children: [
          Image.asset(
            ImageNames.axeStrengthImage,
            scale: 1.3,
          ),
          const SizedBox(width: 8),
          const Text(
            '40%',
            style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      damage: const Text(
        '4 (ближній бій)',
        style: TextStyle(color: AppColors.textColor),
      ),
      knockback: const Text(
        '4.5 (середнє)',
        style: TextStyle(color: AppColors.textColor),
      ),
      criticalChance: const Text(
        '4%',
        style: TextStyle(color: AppColors.textColor),
      ),
      useTime: const Text(
        '28 (середній)',
        style: TextStyle(color: AppColors.textColor),
      ),
      toolSpeed: const Text(
        '20',
        style: TextStyle(color: AppColors.textColor),
      ),
      rarity: Stack(
        children: [
          Text(
            'Біла',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2
                ..color = Colors.black,
            ),
          ),
          const Text(
            'Біла',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      sell: Row(
        children: [
          const Text(
            '1',
            style: TextStyle(color: AppColors.textColor),
          ),
          const SizedBox(width: 4,),
          Image.asset(ImageNames.silverCoin),
          const SizedBox(width: 4,),
          const Text(
            '80',
            style: TextStyle(color: AppColors.textColor),
          ),
          const SizedBox(width: 4,),
          Image.asset(ImageNames.copperCoin)
        ],
      ),
      research: const Text(
        '1 одиниця',
        style: TextStyle(
          color: AppColors.researchTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      description: const Text(
        ItemDescriptions.tinAxeDescription,
        overflow: TextOverflow.ellipsis,
        maxLines: 1000,
        style: TextStyle(color: AppColors.textColor),
        textAlign: TextAlign.justify,
      ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.ironAxe, scale: 0.8),
    itemName: const Text(
      ButtonNames.ironAxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.ironAxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '45%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '5 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '4.5 (середнє)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '27 (середній)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '19',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '3',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin),
        const SizedBox(width: 4,),
        const Text(
          '20',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.copperCoin)
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.ironAxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.leadAxe, scale: 0.8),
    itemName: const Text(
      ButtonNames.leadAxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.tinAxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '50%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '6 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '4.5 (середнє)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '28 (середній)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '19',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '4',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin),
        const SizedBox(width: 4,),
        const Text(
          '80',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.copperCoin)
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.tinAxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.silverAxe, scale: 0.8),
    itemName: const Text(
      ButtonNames.silverAxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.silverAxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '50%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '6 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '4.5 (середнє)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '26 (середній)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '18',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '8',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin),
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.silverAxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.tungstenAxe, scale: 0.8),
    itemName: const Text(
      ButtonNames.tungstenAxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.tungstenAxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '55%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '7 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '4.5 (середнє)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '26 (середній)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '18',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '12',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin),
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.tinAxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.goldAxe, scale: 0.8),
    itemName: const Text(
      ButtonNames.goldAxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.goldAxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '55%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '7 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '4.5 (середнє)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '26 (середній)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '18',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '16',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin),
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.goldAxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.platinumAxe, scale: 0.8),
    itemName: const Text(
      ButtonNames.platinumAxeText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.platinumAxeLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '60%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '8 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '4.5 (середнє)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '25 (швидкий)',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '17',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Біла',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Біла',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '24',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin),
        const SizedBox(width: 4,),
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.platinumAxeDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.cobaltChainsaw, scale: 0.8, height: 30,),
    itemName: const Text(
      ButtonNames.cobaltChainsawText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.cobaltChainsawLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '70%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '23 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '2.75 (дуже слабку)',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '15 (дуже швидке)',
      style: TextStyle(color: AppColors.textColor),
    ),
    velocity: const Text(
      '40',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '7',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Світло-червоний',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Світло-червоний',
          style: TextStyle(
            color: Color(0xfffd9595),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '1',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.goldCoin),
        const SizedBox(width: 4,),
        const Text(
          '8',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.silverCoin)
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.cobaltChainsawDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
  AllItems(
    icon: Image.asset(ImageNames.butchersChainsaw, scale: 0.8),
    itemName: const Text(
      ButtonNames.butchersChainsawText,
      style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    ),
    itemLink: IconButton(
      icon: const Icon(wikiIcon, size: 28),
      onPressed: () {
        final Uri wiki = Uri.parse(WikiLinks.butchersChainsawLink);
        launchUrl(wiki);
      },
    ),
    pickaxeStrength: Row(
      children: [
        Image.asset(
          ImageNames.pickaxeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    hammerStrength: Row(
      children: [
        Image.asset(
          ImageNames.hammerStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '0%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    axeStrength: Row(
      children: [
        Image.asset(
          ImageNames.axeStrengthImage,
          scale: 1.3,
        ),
        const SizedBox(width: 8),
        const Text(
          '150%',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    damage: const Text(
      '120 (ближній бій)',
      style: TextStyle(color: AppColors.textColor),
    ),
    knockback: const Text(
      '8 (дуже сильний)',
      style: TextStyle(color: AppColors.textColor),
    ),
    bonus: const Text(
      '-1 радіус',
      style: TextStyle(color: AppColors.textColor),
    ),
    criticalChance: const Text(
      '4%',
      style: TextStyle(color: AppColors.textColor),
    ),
    useTime: const Text(
      '15 (дуже швидкий)',
      style: TextStyle(color: AppColors.textColor),
    ),
    velocity: const Text(
      '48',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolSpeed: const Text(
      '4',
      style: TextStyle(color: AppColors.textColor),
    ),
    toolTip: const Text(
      'Від уражених ворогів виходять іскри',
      style: TextStyle(color: AppColors.textColor),
    ),
    rarity: Stack(
      children: [
        Text(
          'Жовта',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        const Text(
          'Жовта',
          style: TextStyle(
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    sell: Row(
      children: [
        const Text(
          '10',
          style: TextStyle(color: AppColors.textColor),
        ),
        const SizedBox(width: 4,),
        Image.asset(ImageNames.goldCoin),
      ],
    ),
    research: const Text(
      '1 одиниця',
      style: TextStyle(
        color: AppColors.researchTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    description: const Text(
      ItemDescriptions.butchersChainsawDescription,
      overflow: TextOverflow.ellipsis,
      maxLines: 1000,
      style: TextStyle(color: AppColors.textColor),
      textAlign: TextAlign.justify,
    ),
  ),
];

class ItemData {
  final List<Widget> widgets;
  final bool tool;

  ItemData({required this.widgets, required this.tool});
}

List<dynamic> readyWidgets = [];

ItemData getItem(String? itemName) {
  List<Widget> readyWidgets = [];
  bool tool = false;
  double paddingWidth = 2;

  for (AllItems item in allItems) {
    if (item.itemName.data == itemName) {
      readyWidgets.add(item.itemName);
      readyWidgets.add(item.itemLink);
      readyWidgets.add(item.icon);
      if (item.pickaxeStrength != null) {
        tool = true;
        readyWidgets.add(
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(width: 12),
                Container(
                  alignment: Alignment.center,
                  child: item.pickaxeStrength!,
                ),
                Container(
                  alignment: Alignment.center,
                  child: item.hammerStrength!,
                ),
                Container(
                  alignment: Alignment.center,
                  child: item.axeStrength!,
                ),
                const SizedBox(width: 12),
              ],
            ),
          ),
        );
      }
      if (item.damage != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: paddingWidth),
                    child: const Text(
                      'Шкода',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ),
              ),
               const SizedBox(width: 8,),
               Expanded(
                 child: Align(
                   alignment: Alignment.centerLeft,
                   child: Padding(
                     padding: EdgeInsets.only(left: paddingWidth),
                     child: item.damage!
                   ),
                 ),
               ),
            ],
          )
        );
      }
      if (item.knockback != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Відкидування',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.knockback!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.bonus != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Бонус',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.bonus!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.criticalChance != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Шанс КУ',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.criticalChance!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.useTime != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Час використання',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.useTime!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.velocity != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Швидкість',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.velocity!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.toolSpeed != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Швидк. інструм.',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.toolSpeed!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.toolTip != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Підказка',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.toolTip!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.rarity != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Рідкість',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.rarity!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.buy != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Купівля',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.buy!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.sell != null) {
        readyWidgets.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: const Text(
                        'Продаж',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: item.sell!
                  ),
                ),
              ),
            ],
          )
        );
      }
      if (item.research != null) {
        readyWidgets.add(
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: paddingWidth),
                        child: const Text(
                          'Дослідження',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: paddingWidth),
                        child: item.research!
                    ),
                  ),
                ),
              ],
            )
        );
      }
      readyWidgets.add(
        item.description
      );
      return ItemData(widgets: readyWidgets, tool: tool);
    }
  }
  throw Exception('Предмет з назвою $itemName не знайдено.');
}