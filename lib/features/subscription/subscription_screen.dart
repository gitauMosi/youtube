
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/widgets/follow_channel_widget.dart';

import '../../widgets/custom_appbar.dart';
import '../../widgets/post_card.dart';

class SubscriptionScreen extends StatelessWidget {
   SubscriptionScreen({super.key});

    final List<String> categories = [
    "All",
    "Today",
    "Videos",
    "Shorts",
    "Live",
    "Posts",
    "Continue watching",
    "Unwatched"
  ];

  final List<FollowChannelWidget> followingList = List.generate(5, (value) => FollowChannelWidget());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          customAppBar(),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: followingList.map((follower) => follower).toList()
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: SizedBox(
                height: 40.0,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                ),
              ),
            ),
          ),
          
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PostCard();
              },
              childCount: 20,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PostCard();
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}