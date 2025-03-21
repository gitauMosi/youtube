// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/core/utils/app_strings.dart';
import 'package:youtube/core/utils/app_styles.dart';
import 'package:youtube/features/profile/profile_sub_pages/dowloads_screen.dart';

import '../../widgets/history_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(icon: Icon(Icons.cast), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings_outlined), onPressed: () {})
        ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              children: [
                _headerSection(context),
                _secondRowSection(context),
                _customrow(context, AppStrings.historyStr),
                _profileScreen(),
                _playlistsRow(context),
                _customPlayListsRow(),
                Column(
                  children: [
                    _customTile(AppStrings.yourvideosStr,
                        Icons.ondemand_video_sharp, () {}),
                    _customTile(
                        AppStrings.downloadsStr, Icons.download_rounded, () {Get.to(()=>DowloadsScreen());}),
                    Divider(),
                    _customTile(AppStrings.yourMoviesStr,
                        Icons.personal_video_outlined, () {}),
                    _customTile(AppStrings.getYouTubePremiumStr,
                        Icons.video_camera_front_outlined, () {}),
                    Divider(),
                    _customTile(AppStrings.timeWatchedStr,
                        Icons.analytics_outlined, () {}),
                    _customTile(
                        AppStrings.helpAndFeedbackStr, Icons.help, () {}),
                    Divider(),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget _customTile(String name, IconData icon, Function() function) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: Row(
          spacing: 10,
          children: [
            Icon(icon),
            Text(
              name,
              style: AppStyles.titleMediumStyle,
            )
          ],
        ),
      ),
    );
  }

  Row _customPlayListsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [HistoryCard(), HistoryCard()],
    );
  }

  Padding _playlistsRow(BuildContext context) {
    var boxDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            width: 1, color: Theme.of(context).colorScheme.onPrimary),
        color: Theme.of(context).cardColor);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.playlistStr,
            style: AppStyles.titleMediumStyleBold,
          ),
          Wrap(
            spacing: 5,
            children: [
              Icon(Icons.add),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6.0),
                decoration: boxDecoration,
                child: Center(
                  child: Text(
                    AppStrings.viewAllStr,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  SizedBox _profileScreen() {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.all(0),
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return HistoryCard();
          }),
    );
  }

  Row _customrow(BuildContext context, String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  width: 1, color: Theme.of(context).colorScheme.onPrimary),
              color: Theme.of(context).cardColor),
          child: Center(
            child: Text(
              AppStrings.viewAllStr,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
          ),
        )
      ],
    );
  }

  SizedBox _secondRowSection(BuildContext context) {
    return SizedBox(
        height: 50,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 10,
            children: [
              _customChip(context, AppStrings.switchAccountStr),
              _customChip(context, AppStrings.googleAccountStr),
              _customChip(context, AppStrings.turnOnIcongnitoStr),
              _customChip(context, AppStrings.shareChannelStr)
            ],
          ),
        ));
  }

  Chip _customChip(BuildContext context, String name) {
    return Chip(
        backgroundColor: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
            side: BorderSide.none, borderRadius: BorderRadius.circular(16)),
        label: Text(name, style: TextStyle(fontWeight: FontWeight.w500)));
  }

  Row _headerSection(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Theme.of(context).cardColor),
          child: Center(
            child: Text("M", style: AppStyles.headlineMediumStyleBold),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.userStr,
              style: AppStyles.titleMediumStyle,
            ),
            Row(
              spacing: 5,
              children: [
                Text(AppStrings.usernameStr),
                Icon(
                  Icons.circle,
                  size: 3,
                ),
                Text(AppStrings.viewChannelStr),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
