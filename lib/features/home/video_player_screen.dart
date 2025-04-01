import 'package:flutter/material.dart';
import 'package:youtube/core/utils/app_strings.dart';
import 'package:youtube/core/utils/app_styles.dart';
import 'package:youtube/widgets/post_card.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
             _videoSection(context),
              Column(
                children: [
                  _videoInfoSection(),
                  _commentScetion(),
                  SizedBox(
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return PostCard();
                        }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _videoInfoSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "How to be Invisible Online (and the hard truth about it)",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: AppStyles.titleMediumStyleBold,
          ),
          Row(
            children: [
              Text(
                "2.3M views",
                style: AppStyles.bodySmallStyle,
              ),
              Text(
                " 1y ago",
                style: AppStyles.bodySmallStyle,
              ),
              Text(
                "David Bombal Podcast",
                style: AppStyles.bodySmallStyle,
              ),
              Text(
                "...more",
                style: AppStyles.bodySmallStyle,
              )
            ],
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(AppStrings.userAvatarStr),
            ),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                Text(
                  "David Bombal",
                  style: AppStyles.bodyMediumStyleBold,
                ),
                Text("2.81M")
              ],
            ),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    backgroundColor: Colors.white),
                onPressed: () {},
                child: Text(
                  "Subscribe",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomReactChip(
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up_outlined,
                        size: 16,
                      ),
                      Text(
                        "67K",
                      ),
                      VerticalDivider(),
                      Icon(
                        Icons.thumb_down_outlined,
                        size: 16,
                      )
                    ],
                  ),
                ),
                CustomReactChip(
                    child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      Icons.share,
                      size: 16,
                    ),
                    Text("Share")
                  ],
                )),
                CustomReactChip(
                    child: Row(
                  spacing: 8,
                  children: [
                    Image.asset(
                      "assets/icons/short_light.png",
                      width: 20,
                    ),
                    Text("Remix")
                  ],
                )),
                CustomReactChip(
                    child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 16,
                    ),
                    Text("Thanks")
                  ],
                )),
                CustomReactChip(
                    child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      Icons.download,
                      size: 16,
                    ),
                    Text("Download")
                  ],
                )),
                CustomReactChip(
                    child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      Icons.bookmark_outline,
                      size: 16,
                    ),
                    Text("Save")
                  ],
                )),
                CustomReactChip(
                    child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      Icons.report_outlined,
                      size: 16,
                    ),
                    Text("Report")
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _videoSection(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.amber),
    );
  }
}

class _commentScetion extends StatelessWidget {
  const _commentScetion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).cardColor),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Comments 3.1k",
                style: AppStyles.bodyMediumStyleBold,
              ),
            ],
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              child: Text("K"),
              radius: 20,
            ),
            subtitle: Text(
                "A wise person once said: if  you know assembly every software is open source"),
          )
        ],
      ),
    );
  }
}

class CustomReactChip extends StatelessWidget {
  Widget child;
  CustomReactChip({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Chip(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Theme.of(context).cardColor,
          label: child),
    );
  }
}
