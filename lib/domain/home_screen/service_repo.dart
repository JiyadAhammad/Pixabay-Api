import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'models/home_screen.dart';

abstract class HomeScreenRepo {
  Future<Either<MainFailure, List<HomeImage>>> getImages();
}
