import 'package:instagram_app/data/contracts/login_contract.dart';
import 'package:instagram_app/data/models/remote/login_model.dart';
import 'package:instagram_app/data/services/remote/login_service.dart';

class LoginRepo implements LoginContract {
  final LoginService _loginService;

  LoginRepo(this._loginService);
  @override
  Future<LoginResponse> login(String login, String password) =>
      _loginService.login(login, password);
}
