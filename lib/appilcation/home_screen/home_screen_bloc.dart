import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/home_screen/models/home_screen.dart';
import '../../domain/home_screen/service_repo.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

@injectable
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(this.homeScreenRepo) : super(HomeScreenState.inital()) {
    on<_GetImages>(
      (HomeScreenEvent event, Emitter<HomeScreenState> emit) async {
        if (state.homeImage.isNotEmpty) {
          emit(state);
          return;
        }
        emit(
          const HomeScreenState(
            homeImage: <HomeImage>[],
            isLoading: true,
            isError: false,
          ),
        );
        final Either<MainFailure, List<HomeImage>> result =
            await homeScreenRepo.getImages();
        final HomeScreenState homeResult = result.fold(
          (MainFailure failure) {
            return const HomeScreenState(
              homeImage: <HomeImage>[],
              isLoading: false,
              isError: true,
            );
          },
          (List<HomeImage> list) {
            return HomeScreenState(
              homeImage: list,
              isLoading: false,
              isError: false,
            );
          },
        );
        emit(homeResult);
      },
    );
  }
  final HomeScreenRepo homeScreenRepo;
}
