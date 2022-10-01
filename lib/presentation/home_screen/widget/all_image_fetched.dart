import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../appilcation/home_screen/home_screen_bloc.dart';
import '../../../domain/home_screen/models/home_screen.dart';
import '../../constants/colors/colors.dart';

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
              return MainMovieCardLidtItem(
                imageUri: image.webFormatURL.toString(),
              );
            },
          ),
        );
      },
    );
  }
}

class MainMovieCardLidtItem extends StatelessWidget {
  const MainMovieCardLidtItem({super.key, required this.imageUri});
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
