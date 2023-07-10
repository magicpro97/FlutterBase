import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../retrofit/retrofit_network_api.dart';

@module
abstract class NetworkModule {
  String get baseUrl => "https://jsonplaceholder.typicode.com/";

  PrettyDioLogger get prettyDioLogger => PrettyDioLogger(requestBody: true);

  @Environment('dev')
  Dio getDevDio(
    PrettyDioLogger prettyDioLogger,
  ) =>
      Dio(BaseOptions(
        baseUrl: baseUrl,
      ))
        ..interceptors.add(prettyDioLogger);

  @Environment('prod')
  Dio getDio(
    PrettyDioLogger prettyDioLogger,
  ) =>
      Dio(BaseOptions(
        baseUrl: baseUrl,
      ))
        ..interceptors.add(prettyDioLogger);

  @singleton
  RetrofitNetworkApi getRetrofitNetworkApi(Dio dio) => RetrofitNetworkApi(dio);
}
