import 'package:flutter/material.dart';

Positioned reactionSection() {
    return Positioned(
          bottom: 78,
          right: 20,
          child: Column(
            spacing: 10,
            children: [
              _reactionItem(Icons.thumb_up_outlined, "12K", (){}),
              _reactionItem(Icons.thumb_down_outlined, "Dislike", (){}),
              _reactionItem(Icons.comment, "732", (){}),
              _reactionItem(Icons.reply_sharp, "Share", (){}),
              _reactionItem(Icons.repeat_outlined, "Remix", (){}),
            ],
          ),
        );
  }

  Column _reactionItem(IconData icon, String value, Function() function) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 3,
              children: [
                Icon(icon),
                Text("12K")
              ],
            );
  }