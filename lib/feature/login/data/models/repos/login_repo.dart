import 'package:flutter_complete_project/core/networking/api_result.dart';
import 'package:flutter_complete_project/core/networking/api_services.dart';
import 'package:flutter_complete_project/feature/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/feature/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService apiService;
  LoginRepo({required this.apiService});
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      print(e.toString());
      return ApiResult.failure(e.toString());
    }
  }
}
