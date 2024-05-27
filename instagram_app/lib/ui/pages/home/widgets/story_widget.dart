import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key, required this.image, required this.colors});
  final String image;
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          shape: BoxShape.circle, gradient: LinearGradient(colors: colors)),
      child: Image.asset(image),
    );
  }
}
