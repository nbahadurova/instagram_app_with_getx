import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:instagram_app/data/models/remote/login_model.dart';

class LoginLocalService {
  LoginLocalService(this._box);

  final Box<String> _box;

  Future<void> saveLoginResponse(LoginResponse response) async {
    _box.put("loginInfo", jsonEncode(response.toJson()));
  }

  LoginResponse? get loginResponse {
    try {
      String? loginResponse = _box.get("loginInfo");
      LoginResponse decodedResponse =
          LoginResponse.fromJson(jsonDecode(loginResponse!));
      return decodedResponse;
    } catch (e) {
      return null;
    }
  }

  Future<int> clearCache() => _box.clear();
}
