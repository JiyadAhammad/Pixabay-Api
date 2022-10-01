import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/core/api_end_points.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/home_screen/models/home_screen.dart';
import '../../domain/home_screen/service_repo.dart';

@LazySingleton(as: HomeScreenRepo)
class DownloadRepo implements HomeScreenRepo {
  @override
  Future<Either<MainFailure, List<HomeImage>>> getImages() async {
    try {
      final Response<dynamic> response =
          await Dio(BaseOptions()).get(ApiEndPoints.imageApi);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<HomeImage> homeList =
            (response.data['hits'] as List<dynamic>).map(
          (dynamic e) {
            return HomeImage.fromJson(e as Map<String, dynamic>);
          },
        ).toList();
        return right(homeList);
      } else {
        return const Left<MainFailure, List<HomeImage>>(
            MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left<MainFailure, List<HomeImage>>(
          MainFailure.clientFailure());
    }
  }
}
