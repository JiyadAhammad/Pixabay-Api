import 'package:flutter/material.dart';

BoxDecoration backGroundGradient() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: <Color>[
        Colors.black,
        Colors.black,
        Colors.white,
        Colors.white,
      ],
    ),
  );
}
