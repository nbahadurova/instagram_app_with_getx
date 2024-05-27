import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';

class DotIndicator extends StatefulWidget {
  const DotIndicator({super.key});

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      mainAxisSize: MainAxisSize.min,
      dotsCount: 3,
      decorator: const DotsDecorator(
        size: Size.square(7.0),
        activeSize: Size.square(7.0),
        spacing: EdgeInsets.all(2.0),
        activeColor: AppColors.blueBtnColor,
        color: AppColors.dotInActiveColor,
      ),
    );
  }
}
