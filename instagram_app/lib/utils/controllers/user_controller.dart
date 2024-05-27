import 'package:instagram_app/utils/di/locator.dart';
import 'package:instagram_app/data/models/remote/login_model.dart';
import 'package:instagram_app/data/services/local/login_local_service.dart';


class UserController {
  static final loginLocalService = locator<LoginLocalService>();
  static User user = loginLocalService.loginResponse!.user!;
  static String accessToken = loginLocalService.loginResponse!.accessToken!;
}