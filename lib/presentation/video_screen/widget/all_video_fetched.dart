import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllVideoFetched extends StatelessWidget {
  const AllVideoFetched({
    super.key,
    required this.titleName,
    required this.imageUrl,
  });
  final String titleName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 4 / 3),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: screenwidth * 0.44,
                height: screenwidth * 0.44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      imageUrl,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
