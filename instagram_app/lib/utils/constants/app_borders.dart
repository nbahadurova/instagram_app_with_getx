import 'package:flutter/material.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/constants/app_radiuses.dart';

class AppBorders {
  AppBorders._();
  static const defaultInputBorder = OutlineInputBorder(
    borderRadius: AppRadiuses.a5,
    borderSide: BorderSide(color: AppColors.inputBorderColor),
  );
  static const defaultCommentInputBorder = OutlineInputBorder(
    borderRadius: AppRadiuses.a35,
    borderSide: BorderSide(color: AppColors.commentInputBorderColor),
  );

  static const errorInputBorder = OutlineInputBorder(
    borderRadius: AppRadiuses.a5,
    borderSide: BorderSide(color: Colors.red),
  );
}
