import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/utils/di/locator.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';
import 'package:instagram_app/utils/constants/app_strings.dart';
import 'package:instagram_app/utils/controllers/post_controller.dart';
import 'package:instagram_app/ui/pages/home/widgets/comment_input.dart';
import 'package:instagram_app/ui/pages/home/widgets/comment_widget.dart';
import 'package:instagram_app/utils/controllers/comment_controller.dart';
import 'package:instagram_app/utils/controllers/show_comments_controller.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    final CommentController commentController =
        Get.put(CommentController(locator(), locator()));
    final ShowCommentsController showCommentsController = Get.put(locator());
    final PostController postController = Get.find();
    return GestureDetector(
      onTap: () {
        showCommentsController.getComments(id);
        showModalBottomSheet(
          showDragHandle: true,
          context: context,
          builder: (context) {
            return Column(
              children: [
                const Center(
                    child: Text(
                  AppStrings.commentTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )),
                Expanded(child: Obx(() {
                  if (postController.isLoading.value) {
                    return const Center(
                        child: CircularProgressIndicator.adaptive());
                  } else if (showCommentsController.commentModels.isEmpty) {
                    return const Center(child: Text(AppStrings.noComment));
                  }
                  return ListView.builder(
                    itemCount: showCommentsController.commentModels.length,
                    itemBuilder: (context, index) {
                      final commentInfo =
                          showCommentsController.commentModels[index];
                      return CommentWidget(
                          userName: commentInfo.user!.username!.toString(),
                          time: commentInfo.timeDiff!,
                          comment: commentInfo.text!);
                    },
                  );
                })),
                CommentInput(
                    onPressed: () {
                      commentController.addComment(id);
                    },
                    controller: commentController.textController.value),
              ],
            );
          },
        );
      },
      child: SizedBox(
        height: 24,
        width: 24,
        child: Image.asset(AppAssets.commentIcon),
      ),
    );
  }
}
