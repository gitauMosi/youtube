import 'package:flutter/material.dart';

import '../../widgets/shorts_widegt.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) => ShortsWidegt()));
  }
}
