import 'package:flutter/material.dart';
import 'package:shop_smart/helpers/app_assets.dart';
import 'package:shop_smart/helpers/app_styles.dart';

class LoginViewHeader extends StatelessWidget {
  const LoginViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Image.asset(AppAssets.appIcon, height: 218, width: 390),
        const SizedBox(height: 20),
        const Text('ShopSmart', style: AppStyles.font22CustomBlackW700),
        const SizedBox(height: 12),
      ],
    );
  }
}
