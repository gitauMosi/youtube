import 'package:flutter/material.dart';

import '../core/utils/app_strings.dart';
import '../core/utils/app_styles.dart';

class DownloadVideoCard extends StatelessWidget {
  const DownloadVideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var subTextStyle = AppStyles.bodySmallStyle.copyWith(
        color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.5));
    return Card(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 170,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 3,
              children: [
                Text(
                  AppStrings.postTitleStr,
                  style: AppStyles.titleSmallStyle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 4,
                  children: [
                    Icon(Icons.check_circle,
                        size: 12,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.5)),
                    Text(
                      AppStrings.postUserName,
                      style: subTextStyle,
                    ),
                  ],
                ),
                Row(
                  spacing: 5,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(AppStrings.onesixtyViews, style: subTextStyle),
                    Icon(
                      Icons.circle,
                      size: 2,
                    ),
                    Text(AppStrings.threeYearsAgoStr, style: subTextStyle)
                  ],
                ),
              ],
            ),
          ),
        ),
        Icon(Icons.more_vert)
      ],
    ));
  }
}