import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'retrofit_network_api.g.dart';

@RestApi()
abstract class RetrofitNetworkApi {
  factory RetrofitNetworkApi(Dio dio, {String baseUrl}) = _RetrofitNetworkApi;
}
