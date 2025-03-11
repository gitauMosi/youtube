import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String videoId;
  const PostCard({super.key, required this.videoId});

  @override
  Widget build(BuildContext context) {
    // final VideoPlayerController controller = Get.put(VideoPlayerController());

    // Initialize the controller
    // controller.initialize(videoId);

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
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpjlcTzHHCoRaFt81wwRwsBwzfYvW_cb9dhA&s"),
            ),
            SizedBox(width: 10.0),
            Flexible(
              child: Column(
                children: [
                  Text(
                    "I Opened A 5 Star Restaurant On A London Underground Train",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    spacing: 7,
                    children: [
                      Text("Niko Omilana", style: TextStyle(fontSize: 12)),
                      Icon(Icons.circle, size: 3),
                      Text("7.8M views", style: TextStyle(fontSize: 12)),
                      Icon(Icons.circle, size: 3),
                      Text("5 years ago", style: TextStyle(fontSize: 12)),
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
            _buildListTile(Icons.queue_play_next, "Play next in queue"),
            _buildListTile(Icons.access_time, "Save to Watch later"),
            _buildListTile(Icons.bookmark_border, "Save to playlist"),
            _buildListTile(Icons.download, "Download video"),
            _buildListTile(Icons.share, "Share"),
            _buildListTile(Icons.remove_circle_outline, "Not interested"),
            _buildListTile(Icons.block, "Don't recommend channel"),
            _buildListTile(Icons.flag, "Report"),
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
      title: Text(title, style: TextStyle(color: Colors.white)),
      onTap: () {}, // Add action here
    );
  }
}
