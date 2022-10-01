import 'package:flutter/material.dart';

import '../../home_screen/home_screen.dart';
import '../../video_screen/video_screen.dart';
import 'widget/bottom_navigation.dart';

class NavigatonBarScreen extends StatelessWidget {
  NavigatonBarScreen({super.key});
  final List<Widget> pages = <Widget>[
    const HomeScreen(),
    const VideoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder<int>(
          valueListenable: navigationbarindexnotifier,
          builder: (BuildContext context, int value, Widget? _) {
            return pages[value];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidgets(),
    );
  }
}
