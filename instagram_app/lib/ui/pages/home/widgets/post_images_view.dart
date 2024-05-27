import 'package:flutter/material.dart';
import 'package:instagram_app/ui/pages/home/widgets/post_image.dart';

class PostImagesView extends StatelessWidget {
  const PostImagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 375,
      child: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const PostImage();
        },
      ),
    );
  }
}
