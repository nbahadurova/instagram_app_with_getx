import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';
import 'package:instagram_app/utils/constants/app_paddings.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h10,
      child: AppBar(
        centerTitle: true,
        title: SizedBox(
          height: 150,
          width: 150,
          child: Image.asset(
            AppAssets.lightLogo,
          ),
        ),
        leadingWidth: 25,
        leading: Image.asset(AppAssets.cameraIcon),
        actions: [
          Row(
            children: [
              SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(AppAssets.reelsIcon),
              ),
              5.horizontalSpace,
              SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(AppAssets.shareIcon),
              ),
            ],
          )
        ],
      ),
    );
  }
}
