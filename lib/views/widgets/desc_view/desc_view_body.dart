import 'package:flutter/material.dart';
import '../../../helpers/app_styles.dart';
import '../../../models/cart_model.dart';
class DescViewBody extends StatelessWidget {
  const DescViewBody({super.key, required this.product});
  final CartModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(product.image,width: 390,height: 320,),
         Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(product.title,style: AppStyles.font18CustomBlackW700,),
              Text(product.description,style: AppStyles.font16CustomBlackW500,),
            ],
          ),
        )
      ],
    );
  }
}
