
import 'package:flutter/material.dart';
import 'package:youtube/core/utils/app_styles.dart';

class FollowChannelWidget extends StatelessWidget {
  const FollowChannelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(radius: 40,),
              Positioned(
                bottom: 0,
                right: 0,
                child: Icon(Icons.circle, color: Colors.blue, size: 18,))
            ],
          ),
          Text("Android dev", style: AppStyles.bodyLargeStyle,)
        ],
        
      ),
    );
  }
}