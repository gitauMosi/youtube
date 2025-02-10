import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/features/add/add_screen.dart';
import 'package:youtube/features/home/home_screen.dart';
import 'package:youtube/features/profile/profile_screen.dart';
import 'package:youtube/features/shorts/shorts_screen.dart';
import 'package:youtube/features/subscription/subscription_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedItemIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ShortsScreen(),
    AddScreen(),
    SubscriptionScreen(),
    ProfileScreen()
  ];

  void onItemSelected(int index) {
    setState(() {
      selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedItemIndex],

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItemIndex,
          onTap: onItemSelected,
          selectedLabelStyle: TextStyle(fontSize: 13),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home_rounded),
                 
                label: "Home"),
            bottomNavItem("Shorts", "assets/icons/short_light.png",
                "assets/icons/short_black.png"),
            addBottomNavItem(),
            bottomNavItem("Subscriptions", "assets/icons/playlist_light.png",
                "assets/icons/playlist_black.png"),
            profileBottomNavItem()
          ]),
    );
  }

  BottomNavigationBarItem bottomNavItem(
      String label, String lightIcon, String darkIcon) {
    return BottomNavigationBarItem(
      icon: Image(
        image: AssetImage(
          Get.isDarkMode ? lightIcon : darkIcon,
        ),
        width: 20,
      ),
      label: label,
    );
  }

  BottomNavigationBarItem addBottomNavItem() {
    return BottomNavigationBarItem(
      icon: Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey[100]!.withOpacity(0.4),
              ),
              color: Theme.of(context).cardColor,
              shape: BoxShape.circle),
          child: Icon(Icons.add)),
      label: "",
    );
  }

  BottomNavigationBarItem profileBottomNavItem() {
    return BottomNavigationBarItem(
      icon: Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor, shape: BoxShape.circle),
          child: Text(
            "M",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      label: "You",
    );
  }
}
