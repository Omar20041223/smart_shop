import 'package:flutter/material.dart';
import 'package:shop_smart/views/widgets/desc_view/desc_view_body.dart';

import '../helpers/app_styles.dart';
import '../models/cart_model.dart';
class DescView extends StatelessWidget {
  const DescView({super.key, required this.product});
  final CartModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Description', style: AppStyles.font18CustomBlackW700),
        centerTitle: true,
      ),
      body: DescViewBody(product: product,),
    );
  }
}
