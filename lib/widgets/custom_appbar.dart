import 'package:flutter/material.dart';
import 'package:get/get.dart';
final String  lightTubeIcon = "assets/icons/tube_light.png";
final String  darkTubeIcon = "assets/icons/tube_black.png";
AppBar customAppBar() {
    return AppBar(
      title: Image.asset( Get.isDarkMode ? lightTubeIcon : darkTubeIcon
        , width: 100,),
      actions: <Widget>[
         IconButton(icon: Icon(Icons.cast), onPressed: () {}),
         IconButton(icon: Icon(Icons.notifications_outlined), onPressed: () {}),
        IconButton(icon: Icon(Icons.search_sharp), onPressed: () {})
      ],
      elevation: 0, 
    );
  }