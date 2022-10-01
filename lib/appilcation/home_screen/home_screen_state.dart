part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required List<HomeImage> homeImage,
    required bool isLoading,
    required bool isError,
  }) = _HomeScreenState;
  factory HomeScreenState.inital() {
    return const HomeScreenState(
      isLoading: false,
      isError: false,
      homeImage: <HomeImage>[],
    );
  }
}
