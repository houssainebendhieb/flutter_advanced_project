import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_constant.dart';
import 'package:flutter_complete_project/feature/login/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part "api_services.g.dart";

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() Map<String, dynamic> body,
  );
}
