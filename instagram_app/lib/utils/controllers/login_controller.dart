import 'dart:developer';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_app/ui/pages/home/home_page.dart';
import 'package:instagram_app/data/contracts/login_contract.dart';
import 'package:instagram_app/data/services/local/login_local_service.dart';

class LoginController extends GetxController {
  final LoginContract _loginContract;
  final LoginLocalService _loginLocalService;
  final selectedIndexSubject = BehaviorSubject<bool>.seeded(false);

  LoginController(this._loginContract, this._loginLocalService);

  late final controllers = {
    'login': TextEditingController(),
    'password': TextEditingController(),
  };
  login() async {
    try {
      final response = await _loginContract.login(
        controllers["login"]!.text,
        controllers["password"]!.text,
      );
      Get.offAll(const HomePage());

      await _loginLocalService.saveLoginResponse(response);
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
    }
  }
}
