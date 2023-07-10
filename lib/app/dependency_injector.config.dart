// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../core/data/di/datastore_module.dart' as _i9;
import '../core/network/di/network_module.dart' as _i8;
import '../core/network/retrofit/retrofit_network_api.dart' as _i7;

const String _dev = 'dev';
const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataStoreModule = _$DataStoreModule();
  final networkModule = _$NetworkModule();
  gh.factory<_i3.FlutterSecureStorage>(() => dataStoreModule.secureStorage);
  gh.factory<_i4.PrettyDioLogger>(() => networkModule.prettyDioLogger);
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => dataStoreModule.prefs,
    preResolve: true,
  );
  gh.factory<String>(() => networkModule.baseUrl);
  gh.factory<_i6.Dio>(
    () => networkModule.getDevDio(gh<_i4.PrettyDioLogger>()),
    registerFor: {_dev},
  );
  gh.factory<_i6.Dio>(
    () => networkModule.getDio(gh<_i4.PrettyDioLogger>()),
    registerFor: {_prod},
  );
  gh.singleton<_i7.RetrofitNetworkApi>(
      networkModule.getRetrofitNetworkApi(gh<_i6.Dio>()));
  return getIt;
}

class _$NetworkModule extends _i8.NetworkModule {}

class _$DataStoreModule extends _i9.DataStoreModule {}
