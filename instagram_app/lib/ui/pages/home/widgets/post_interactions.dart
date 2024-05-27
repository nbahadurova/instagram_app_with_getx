import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';
import 'package:instagram_app/utils/extensions/sized_box_extension.dart';

class PostInteractions extends StatelessWidget {
  const PostInteractions({super.key,this.likeOnTap, required this.color});
  // final void Function()? commentOnTap;
  final void Function()? likeOnTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: likeOnTap,
          child: SizedBox(
            height: 24,
            width: 24,
            child: Image.asset(AppAssets.likeIcon,color: color,),
          ),
        ),
        10.w,
        // GestureDetector(
        //   onTap: commentOnTap,
        //   child: SizedBox(
        //     height: 24,
        //     width: 24,
        //     child: Image.asset(AppAssets.commentIcon),
        //   ),
        // ),
        10.w,
        SizedBox(
          height: 24,
          width: 24,
          child: Image.asset(AppAssets.shareIcon),
        ),
      ],
    );
  }
}
