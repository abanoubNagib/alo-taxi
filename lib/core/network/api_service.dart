import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'api_constance.dart';
part 'api_service.g.dart';


@RestApi(baseUrl: ApiConstance.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // @POST(ApiConstance.login)
  // Future<LoginResponse> login(
  //   @Body() LoginRequestBody loginRequestBody,
  // );
}
