import 'dart:developer';
import 'package:instagram_app/utils/network/dio.dart';
import 'package:instagram_app/utils/constants/endpoints.dart';
import 'package:instagram_app/data/models/remote/login_model.dart';

class LoginService {
  Future<LoginResponse> login(
    String login,
    String password,
  ) async {
    const endpoint = Endpoints.loginUrl;
    final requestBody = {
      "login": login,
      "password": password,
    };
    log(requestBody.runtimeType.toString());

    final response = await authDio.post(endpoint, data: requestBody);
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      return LoginResponse.fromJson(response.data);
    } else {
      throw Exception('Failed to authenticate: ${response.statusCode}');
    }
  }
}
