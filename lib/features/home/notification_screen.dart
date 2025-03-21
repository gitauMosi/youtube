import 'package:flutter/material.dart';
import 'package:youtube/core/utils/app_strings.dart';
import 'package:youtube/core/utils/app_styles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.notifactionStr),
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Icon(
                Icons.notifications_rounded,
                size: 150,
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.6),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                AppStrings.liveNotificationStr,
                style: AppStyles.headlineSmallStyleBold,
              ),
              Text(
                  AppStrings.notMissVideoDescriptionStr,
                  textAlign: TextAlign.center,
                  style: AppStyles.titleMediumStyle),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue
                  ),
                  child: Text(
                    AppStrings.turnOnNotificationStr,
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
