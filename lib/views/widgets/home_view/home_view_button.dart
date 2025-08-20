import 'package:flutter/material.dart';
import 'package:shop_smart/helpers/app_colors.dart';
import 'package:shop_smart/helpers/app_styles.dart';

class HomeViewButton extends StatelessWidget {
  const HomeViewButton({super.key, required this.text, this.onPressed});

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.customWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(text, style: AppStyles.font14CustomBlackW500),
    );
  }
}
