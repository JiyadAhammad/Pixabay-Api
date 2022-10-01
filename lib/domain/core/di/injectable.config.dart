// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../appilcation/home_screen/home_screen_bloc.dart' as _i5;
import '../../../infrastructure/home_screen/download_repository.dart' as _i4;
import '../../home_screen/service_repo.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.HomeScreenRepo>(() => _i4.DownloadRepo());
  gh.factory<_i5.HomeScreenBloc>(
      () => _i5.HomeScreenBloc(get<_i3.HomeScreenRepo>()));
  return get;
}
