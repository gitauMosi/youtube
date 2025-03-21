import 'package:flutter/material.dart';
import 'package:youtube/core/utils/app_strings.dart';
import 'package:youtube/core/utils/app_styles.dart';

import '../../../widgets/dowload_video_card.dart';

class DowloadsScreen extends StatelessWidget {
  const DowloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.downloadsStr,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cast),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.yourVideosStr,
                style: AppStyles.titleSmallStyle,
              ),
              ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return DownloadVideoCard();
                  })
            ],
          ),
        ),
      ),
    );
  }
}


