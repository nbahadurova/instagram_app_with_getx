import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/utils/di/locator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';
import 'package:instagram_app/utils/constants/app_strings.dart';
import 'package:instagram_app/utils/constants/app_paddings.dart';
import 'package:instagram_app/ui/pages/home/widgets/favorite.dart';
import 'package:instagram_app/ui/pages/home/widgets/post_title.dart';
import 'package:instagram_app/utils/controllers/post_controller.dart';
import 'package:instagram_app/ui/pages/home/widgets/comments_list.dart';
import 'package:instagram_app/ui/pages/home/widgets/dot_indicator.dart';
import 'package:instagram_app/ui/pages/home/widgets/post_images_view.dart';

class PostListViewBuilder extends StatelessWidget {
  const PostListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final PostController postController = Get.put(PostController(locator()));
    return Expanded(
      child: Obx(() {
        if (postController.isLoading.value) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }
        return ListView.builder(
          itemCount: postController.postModels.length,
          itemBuilder: (context, index) {
            final post = postController.postModels[index];
            return Column(
              children: [
                PostTitle(title: post.user!.username.toString()),
                const PostImagesView(),
                Padding(
                  padding: AppPaddings.h15 + AppPaddings.t10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: AppPaddings.b10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Favorite(id: post.id!),
                                10.horizontalSpace,
                                CommentsList(id: post.id!),
                                10.horizontalSpace,
                                SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: Image.asset(AppAssets.shareIcon),
                                ),
                              ],
                            ),
                            const DotIndicator(),
                            1.horizontalSpace,
                            SizedBox(
                              height: 23,
                              width: 20,
                              child: Image.asset(AppAssets.saveIcon),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(text: AppStrings.likedBy),
                            TextSpan(
                              text: '${post.user!.username}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(text: AppStrings.and),
                            TextSpan(
                              text: '${post.likes} ${AppStrings.others}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(TextSpan(children: <InlineSpan>[
                        TextSpan(
                          text: '${post.user!.username} ',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: post.description!,
                        )
                      ])),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      }),
    );
  }
}
