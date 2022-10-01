import 'package:flutter/material.dart';

import '../../../constants/colors/colors.dart';

ValueNotifier<int> navigationbarindexnotifier = ValueNotifier<int>(0);

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: navigationbarindexnotifier,
      builder: (BuildContext context, int newIndex, Widget? _) {
        return BottomNavigationBar(
          onTap: (int value) {
            navigationbarindexnotifier.value = value;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: kHomeColor,
          elevation: 0,
          currentIndex: newIndex,
          selectedItemColor: kwhite,
          unselectedItemColor: kbluegrey,
          selectedIconTheme: const IconThemeData(
            color: kwhite,
          ),
          unselectedIconTheme: const IconThemeData(
            color: kbluegrey,
          ),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.download_for_offline_outlined,
              ),
              label: 'Downloads',
            ),
          ],
        );
      },
    );
  }
}
