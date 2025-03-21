import 'package:flutter/material.dart';
import 'package:youtube/core/utils/app_strings.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key,});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          height: 175,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).cardColor,
        ),
        SizedBox(height: 8),
        Row(
          children: [
            SizedBox(width: 8.0),
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  AppStrings.userAvatarStr),
            ),
            SizedBox(width: 10.0),
            Flexible(
              child: Column(
                children: [
                  Text(
                    AppStrings.postTitleStr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    spacing: 7,
                    children: [
                      Text(AppStrings.postUserName, style: TextStyle(fontSize: 12)),
                      Icon(Icons.circle, size: 3),
                      Text(AppStrings.viewsCountStr, style: TextStyle(fontSize: 12)),
                      Icon(Icons.circle, size: 3),
                      Text(AppStrings.postPostedDate, style: TextStyle(fontSize: 12)),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                  onTap: () => showOptionsSheet(context),
                  child: Icon(Icons.more_vert)),
            )
          ],
        )
      ],
    );
  }

  void showOptionsSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Wrap(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 5,
                width: 60,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Theme.of(context).focusColor,
                ),
              ),
            ),
            _buildListTile(Icons.queue_play_next, AppStrings.playNextQueueStr),
            _buildListTile(Icons.access_time, AppStrings.saveWatchLater),
            _buildListTile(Icons.bookmark_border, AppStrings.savePlayList),
            _buildListTile(Icons.download, AppStrings.downloadVideoStr),
            _buildListTile(Icons.share, AppStrings.shareStr),
            _buildListTile(Icons.remove_circle_outline, AppStrings.notInterestedStr),
            _buildListTile(Icons.block, AppStrings.notRecommendChannel),
            _buildListTile(Icons.flag, AppStrings.reportStr),
          ],
        );
      },
    );
  }

  Widget _buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),
      title: Text(title,),
      onTap: () {}, // Add action here
    );
  }
}
