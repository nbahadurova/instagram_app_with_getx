import 'package:flutter/material.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/constants/app_strings.dart';

class PostTitle extends StatelessWidget {
  const PostTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          Image.asset(AppAssets.blueCheckIcon),
        ],
      ),
      subtitle: const Text(
        AppStrings.location,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
      ),
      leading: const SizedBox(
        height: 45,
        width: 45,
        child: CircleAvatar(
          backgroundImage: AssetImage(AppAssets.postProfile),
        ),
      ),
      trailing: const Icon(
        Icons.more_horiz,
        size: 24,
      ),
    );
  }
}
