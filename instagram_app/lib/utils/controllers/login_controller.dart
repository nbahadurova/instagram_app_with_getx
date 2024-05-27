import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_app/data/contracts/login_contract.dart';
import 'package:instagram_app/data/services/local/login_local_service.dart';

class LoginController extends GetxController {
  final LoginContract _loginContract;
  final LoginLocalService _loginLocalService;

  LoginController(this._loginContract, this._loginLocalService);
  
  late final controllers = {
    'login': TextEditingController(),
    'password': TextEditingController(),
  };
  void login() async {
    try {
      final response = await _loginContract.login(
        controllers["login"]!.text,
        controllers["password"]!.text,
      );
      await _loginLocalService.saveLoginResponse(response);
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
    }
  }
}
