import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/core/themes/theme.dart';

import 'features/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'YouTube',
      theme: AppTheme.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: "/main",
      routes: {
        "/main": (context) => MainPage(),
      },
    );
  }
}

