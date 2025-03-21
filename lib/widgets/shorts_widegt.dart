import 'package:flutter/material.dart';
import 'package:youtube/widgets/reaction_section.dart';

class ShortsWidegt extends StatelessWidget {
  const ShortsWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Theme.of(context).cardColor,
          ),
          reactionSection(),
          footerSection(context),
          _appBarSection()
        ],
      );
  }

   Positioned _appBarSection() {
    return Positioned(
      top: 50,
      right: 20,
      child: Row(
        spacing: 10,
        children: [Icon(Icons.cast), Icon(Icons.search), Icon(Icons.more_vert)],
      ),
    );
  }

  Positioned footerSection(BuildContext context) {
    return Positioned(
      bottom: 3,
      left: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 5,
              children: [
                CircleAvatar(
                  radius: 18,
                ),
                Text("@ReLikeVibes"),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Subscribe",
                    style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              spacing: 5,
              children: [
                Icon(
                  Icons.arrow_right,
                  size: 16,
                ),
                Text("Michael Bearson")
              ],
            )
          ],
        ),
      ),
    );
  }
}