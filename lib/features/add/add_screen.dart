import 'package:flutter/material.dart';
import 'package:youtube/core/utils/app_styles.dart';

import '../../core/utils/app_strings.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 5),
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              color: Colors.blueGrey,
            ),
            Positioned(top: 15, right: 0, left: 0, child: _bodyWidget(context)),
            Positioned(
                top: size.height * 0.30,
                right: 0,
                child: _rightIconsItemSection(context)),
            Positioned(
              bottom: 3,
              right: 0,
              left: 0,
              child: _footerSection(context),
            )
          ],
        ),
      ),
    );
  }

  Widget _rightIconsItemSection(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).cardColor.withOpacity(0.3)),
          child: Column(
            spacing: 16,
            children: [
              Icon(Icons.rotate_right_sharp),
              Icon(Icons.speed),
              Icon(Icons.timer_outlined),
              Icon(Icons.auto_fix_high),
              Icon(Icons.face_retouching_natural),
              Icon(Icons.check_circle)
            ],
          ),
        ),
      ],
    );
  }

  Widget _bodyWidget(BuildContext context) {
    return Column(
      spacing: 8.0,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _customSlider(context),
        // top bar icons
        _customAppBarIcons(context),
        // add song
        _newSongSection(context),
      ],
    );
  }

  Padding _footerSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).cardColor),
              ),
              Text(AppStrings.addStr)
            ],
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 4, color: Theme.of(context).cardColor),
                  shape: BoxShape.circle,
                  color: Colors.red),
            ),
          ),
          SizedBox.shrink()
        ],
      ),
    );
  }

  Padding _newSongSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).cardColor.withOpacity(0.3)),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          children: [
            Wrap(
              spacing: 3,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.tryThisSoundStr,
                      style: AppStyles.bodySmallStyleBold,
                    ),
                    Text(
                      AppStrings.songNameStr,
                      style: AppStyles.bodySmallStyle,
                    )
                  ],
                ),
              ],
            ),
            Icon(Icons.close)
          ],
        ),
      ),
    );
  }

  Container _customSlider(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.primaryContainer),
    );
  }

  Padding _customAppBarIcons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).cardColor.withOpacity(0.3)),
              child: Icon(Icons.close)),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).cardColor.withOpacity(0.3)),
            child: Wrap(
              spacing: 3,
              children: [
                Icon(Icons.music_note_outlined),
                Text(
                  AppStrings.addSongStr,
                  style: AppStyles.bodyMediumStyleBold,
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).cardColor.withOpacity(0.3)),
              child: Text(
                AppStrings.songTimerStr,
                style: AppStyles.bodyLargeStyleBold,
              )),
        ],
      ),
    );
  }
}
