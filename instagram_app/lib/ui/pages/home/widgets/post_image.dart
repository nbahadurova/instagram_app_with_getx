import 'package:flutter/material.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/constants/app_strings.dart';
import 'package:instagram_app/utils/extensions/context_extensions.dart';

class PostImage extends StatelessWidget {
  const PostImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Image.asset(
          AppAssets.postImg,
          fit: BoxFit.fill,
          width: context.fullWidth,
        ),
        Positioned(
            top: 15,
            right: 12,
            child: Container(
              width: 39,
              height: 29,
              decoration: BoxDecoration(
                  color: AppColors.postImgCountBgColor,
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text(
                  AppStrings.imgCount,
                  style: TextStyle(
                    color: AppColors.white,
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
