import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/utils/di/locator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_app/ui/pages/home/home_page.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/constants/app_strings.dart';
import 'package:instagram_app/utils/constants/app_paddings.dart';
import 'package:instagram_app/ui/widgets/custom_text_button.dart';
import 'package:instagram_app/ui/widgets/custom_elevated_button.dart';
import 'package:instagram_app/ui/pages/auth/widgets/input_widget.dart';
import 'package:instagram_app/utils/controllers/login_controller.dart';
import 'package:instagram_app/utils/extensions/context_extensions.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController =
        Get.put(LoginController(locator(), locator()));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: AppPaddings.h15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.lightLogo),
                  40.verticalSpace,
                  InputWidget(
                    hintText: AppStrings.phoneNumOrEmail,
                    controller: loginController.controllers['login'],
                  ),
                  12.verticalSpace,
                  InputWidget(
                    hintText: AppStrings.password,
                    controller: loginController.controllers['password'],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                          text: AppStrings.forgotPassword,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blueBtnColor),
                    ],
                  ),
                  15.verticalSpace,
                  SizedBox(
                    width: context.fullWidth,
                    height: 48,
                    child: CustomElevatedButton(
                      text: AppStrings.login,
                      onPressed: () {
                        // isLogin.value = true;
                        loginController.login();
                        Get.offAll(const HomePage());
                      },
                    ),
                  ),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.fb),
                      const CustomTextButton(
                          text: AppStrings.logInWithFacebook,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blueBtnColor)
                    ],
                  ),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(child: Divider()),
                      20.horizontalSpace,
                      const Text(
                        AppStrings.or,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.dontHaveAnAccountColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      20.horizontalSpace,
                      const Expanded(child: Divider()),
                    ],
                  ),
                  40.verticalSpace,
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.dontHaveAnAccount,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.dontHaveAnAccountColor,
                        ),
                      ),
                      CustomTextButton(
                        text: AppStrings.signUp,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blueBtnColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Divider(),
          22.verticalSpace,
          const Text(
            AppStrings.instaFb,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.dontHaveAnAccountColor),
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
