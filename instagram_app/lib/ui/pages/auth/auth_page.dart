import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/constants/app_strings.dart';
import 'package:instagram_app/utils/constants/app_paddings.dart';
import 'package:instagram_app/ui/widgets/custom_text_button.dart';
import 'package:instagram_app/ui/pages/auth/login/login_page.dart';
import 'package:instagram_app/ui/widgets/custom_elevated_button.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.h25,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppAssets.logo),
                40.verticalSpace,
                const CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage(AppAssets.profileImg),
                ),
                12.verticalSpace,
                const Text(
                  AppStrings.userName,
                  style: TextStyle(
                    color: AppColors.black,
                  ),
                ),
                12.verticalSpace,
                SizedBox(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: CustomElevatedButton(
                    text: AppStrings.login,
                    onPressed: () {
                      Get.to(() => LoginPage());
                    },
                  ),
                ),
                20.verticalSpace,
                const CustomTextButton(
                  text: AppStrings.switchAccounts,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blueBtnColor,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(),
          const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.dontHaveAnAccount,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.dontHaveAnAccountColor,
                ),
              ),
              CustomTextButton(
                text: AppStrings.signUp,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.signUpColor,
              ),
            ],
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
