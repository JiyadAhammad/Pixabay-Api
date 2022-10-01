import 'package:flutter/material.dart';

class MainScreenCard extends StatelessWidget {
  const MainScreenCard({super.key, required this.imageUri});
  final String imageUri;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            imageUri,
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
