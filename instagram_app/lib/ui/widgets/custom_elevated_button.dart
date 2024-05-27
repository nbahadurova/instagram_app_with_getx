import 'package:flutter/material.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/extensions/material_state_property_all_extension.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: AppColors.blueBtnColor.toMspAll,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)).toMspAll,
      ),
      onPressed: onPressed,
      child: Text(text,style: const TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600
      ),),
    );
  }
}
