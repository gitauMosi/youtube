import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_appbar.dart';
import '../../widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> categories = [
    "All",
    "Hidden cameras",
    "Robotics",
    "Sports",
    "Sketch comedy",
    "Mobile Phones",
    "AI",
    "Inventions"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          customAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: SizedBox(
                height: 50.0,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Chip(
                        label: Icon(Icons.explore_outlined, size: 16),
                        backgroundColor: Get.isDarkMode
                            ? Colors.grey[800]
                            : Colors.blue[100],
                      ),
                      const SizedBox(width: 10), 
                      Row(
                        children: categories.map((category) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Chip(
                              label: Text(
                                category,
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              backgroundColor: Get.isDarkMode
                                  ? Colors.grey[800]
                                  : Colors.blue[100],
                              labelStyle: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PostCard(videoId: 'ZZ2ioKEQXu8');
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
