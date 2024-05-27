import 'package:flutter/material.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/constants/app_borders.dart';
import 'package:instagram_app/utils/constants/app_paddings.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.fillColor = AppColors.inputTextBgColor,
    this.hintText,
    this.maxLines = 1,
    this.counterText,
    this.maxLength,
    this.enableCounter = false,
  });

  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextEditingController? controller;
  final Color? fillColor;
  final String? hintText;
  final int? maxLines;
  final int? maxLength;
  final String? counterText;
  final bool enableCounter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines:
          maxLines != null && obscureText == false && enableCounter == true
              ? maxLines! + 1
              : maxLines,
      maxLength: maxLength,
      validator: validator,
      buildCounter: enableCounter == true
          ? (BuildContext context,
              {int? currentLength, int? maxLength, bool? isFocused}) {
              return Transform.translate(
                offset: const Offset(-5, -40),
                child: Text(
                  '$currentLength of $maxLength characters',
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              );
            }
          : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        counterText: enableCounter == false ? "" : counterText,
        contentPadding: enableCounter
            ? const EdgeInsets.only(bottom: 70, left: 20, right: 20)
            : AppPaddings.v10h20,
        fillColor: fillColor,
        filled: true,
        enabled: true,
        hintStyle: const TextStyle(color: AppColors.inputTextColor),
        enabledBorder: AppBorders.defaultInputBorder,
        border: AppBorders.defaultInputBorder,
        errorBorder: AppBorders.errorInputBorder,
      ),
    );
  }
}
