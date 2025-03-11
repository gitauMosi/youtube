import 'package:flutter/material.dart';
import 'package:get/get.dart';

final String lightTubeIcon = "assets/icons/tube_light.png";
final String darkTubeIcon = "assets/icons/tube_black.png";

SliverAppBar customAppBar() {
  return SliverAppBar(
    floating: true,
    title: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(
        Get.isDarkMode ? lightTubeIcon : darkTubeIcon,
        width: 100,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.cast),
        onPressed: () {},
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
      IconButton(
        icon: Icon(Icons.notifications_outlined),
        onPressed: () {},
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
      IconButton(
        icon: Icon(Icons.search_sharp),
        onPressed: () {},
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
    ],
    elevation: 0,
    backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
  );
}
