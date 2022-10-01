import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../appilcation/home_screen/home_screen_bloc.dart';
import '../../../domain/home_screen/models/home_screen.dart';
import '../../constants/colors/colors.dart';
import '../../widget/main_card/main_card.dart';

class AllImageFetched extends StatelessWidget {
  const AllImageFetched({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeScreenBloc>(context).add(
        const HomeScreenEvent.getImages(),
      );
    });
    // final double screenwidth = MediaQuery.of(context).size.width;

    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (BuildContext context, HomeScreenState state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: kred,
              strokeWidth: 2.0,
            ),
          );
        } else if (state.isError) {
          return const Center(
            child: Text('Error while fetching data'),
          );
        } else if (state.homeImage.isEmpty) {
          const Center(
            child: Text('No data Found'),
          );
        }

        return GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 1.4,
          children: List<Widget>.generate(
            state.homeImage.length,
            (int index) {
              final HomeImage image = state.homeImage[index];
              return MainScreenCard(
                imageUri: image.webFormatURL.toString(),
              );
            },
          ),
        );
      },
    );
  }
}
