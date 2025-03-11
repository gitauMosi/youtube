// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
                _customrow(context, "History"),
                _profileScreen(),
                Text("Profile"),
              ],
            ),
          ),
        ));
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
              "View all",
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
              _customChip(context, "Switch account"),
              _customChip(context, "Google Account"),
              _customChip(context, "Turn on Incognito"),
              _customChip(context, "Share Channel")
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
            child: Text(
              "M",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.onPrimary),
            ),
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
              "Mosi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              spacing: 5,
              children: [
                Text("@mosigit"),
                Icon(
                  Icons.circle,
                  size: 3,
                ),
                Text('View channel'),
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
