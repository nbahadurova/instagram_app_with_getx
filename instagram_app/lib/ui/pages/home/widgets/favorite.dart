import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/utils/di/locator.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/utils/controllers/favorite_controller.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController =
        Get.put(FavoriteController(locator()));
    return GestureDetector(onTap: () {
      favoriteController.toggleLikePost(id);
    }, child: Obx(() {
      bool isLiked = favoriteController.postIsClicked[id] ?? false;
      return SizedBox(
        height: 24,
        width: 24,
        child: isLiked
            ? const FaIcon(
                FontAwesomeIcons.solidHeart,
                color: AppColors.red,
              )
            : const FaIcon(
                FontAwesomeIcons.heart,
              ),
      );
    }));
  }
}
