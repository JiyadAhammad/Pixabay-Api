import 'package:flutter/material.dart';


class AllVideoFetched extends StatelessWidget {
  const AllVideoFetched({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int position) {
          return Container(
            color: Colors.accents[position % Colors.accents.length],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
 // return GridView.count(
    //   shrinkWrap: true,
    //   crossAxisCount: 3,
    //   mainAxisSpacing: 10,
    //   crossAxisSpacing: 10,
    //   childAspectRatio: 1 / 1.4,
    //   children: List<Widget>.generate(
    //     // state.homeImage.length,
    //     10,
    //     (int index) {
    //       // final HomeImage image = state.homeImage[index];
    //       return const MainScreenCard(
    //         imageUri:
    //             'https://cdn.pixabay.com/vimeo/328940142/Buttercups%20-%2022634.mp4?width=2608&hash=5d67b1bffe02e407f2fa11cd4839cbdb6c175b88',
    //         // imageUri: image.webFormatURL.toString(),
    //       );
    //     },
    //   ),
    // );
