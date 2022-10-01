import 'package:flutter/material.dart';
import '../constants/colors/colors.dart';
import '../widget/app_bar_widget/app_bar_widget.dart';
import '../widget/back_ground_gradient.dart';
import 'widget/all_image_fetched.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundGradient(),
      child: const Scaffold(
        backgroundColor: ktransparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Home',
          ),
        ),
        body: AllImageFetched(),
      ),
    );
  }
}
