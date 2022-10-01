import 'package:flutter/material.dart';

import '../constants/colors/colors.dart';
import '../widget/app_bar_widget/app_bar_widget.dart';
import '../widget/back_ground_gradient.dart';
import 'widget/all_video_fetched.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundGradient(),
      child: const Scaffold(
        backgroundColor: ktransparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: 'video'),
        ),
        body: AllVideoFetched(
          imageUrl:
              'https://pixabay.com/get/ge72bab8ecc605ea5075edbe5ffb9a8243c71934cebd45dca43c7879a25999458b3d40b4a308568ae61bd2b4ac6d7bc9b42f5da5bd91ca742de40e64b3bd2fdcd_1280.jpg',
        ),
      ),
    );
  }
}
