import 'package:instagram_app/data/models/remote/login_model.dart';

abstract class LoginContract {
  Future<LoginResponse> login(
    String login,
    String password,
  );
}