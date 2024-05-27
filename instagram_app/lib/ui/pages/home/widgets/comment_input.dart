import 'package:flutter/material.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/constants/app_borders.dart';
import 'package:instagram_app/utils/constants/app_strings.dart';
import 'package:instagram_app/utils/constants/app_paddings.dart';

class CommentInput extends StatelessWidget {
  const CommentInput(
      {super.key, required this.controller, required this.onPressed});
  final TextEditingController controller;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.b10,
      child: TextFormField(
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.top,
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          suffix:
              IconButton(onPressed: onPressed, icon: const Icon(Icons.send)),
          contentPadding: const EdgeInsets.symmetric(vertical: 3.0),
          border: AppBorders.defaultCommentInputBorder,
          enabled: true,
          enabledBorder: AppBorders.defaultCommentInputBorder,
          hintText: AppStrings.addComment,
          hintStyle: const TextStyle(color: AppColors.commentInputBorderColor),
        ),
      ),
    );
  }
}
