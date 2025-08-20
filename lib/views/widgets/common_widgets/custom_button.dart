import 'package:flutter/material.dart';
import 'package:shop_smart/helpers/app_colors.dart';

import '../../../helpers/app_styles.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text(text, style: AppStyles.font16WhiteW700,)),
      ),
    );
  }
}
