import 'package:flutter/material.dart';
import 'package:instagram_app/utils/di/locator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_app/ui/pages/home/home_page.dart';
import 'package:instagram_app/ui/pages/auth/auth_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:instagram_app/data/services/local/login_local_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final loginLocalService = locator<LoginLocalService>();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: loginLocalService.loginResponse == null
            ? const AuthPage()
            : const HomePage(),
      ),
    );
  }
}
