import 'package:flutter/material.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/constants/app_paddings.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget(
      {super.key,
      required this.userName,
      required this.time,
      required this.comment});
  final String userName;
  final String time;
  final String comment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h10 + AppPaddings.t10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: userName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: time,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.inputBorderColor,
                  ),
                ),
              ],
            ),
          ),
          Text(comment)
        ],
      ),
    );
  }
}
