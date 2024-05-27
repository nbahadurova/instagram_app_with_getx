import 'package:dio/dio.dart';
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:instagram_app/utils/controllers/user_controller.dart';

final Dio dio = Dio(
  BaseOptions(
    headers: {
      "Accept": "application/json",
      'Authorization': 'Bearer ${UserController.accessToken}',
    },
  ),
);
final Dio authDio = Dio(BaseOptions(
  headers: {
    "Content-Type": "application/json",
    "Accept": "application/json",
  }
))..interceptors.add(AwesomeDioInterceptor());
