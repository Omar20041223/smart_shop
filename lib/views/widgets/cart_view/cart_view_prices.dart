import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/cart_controller.dart';
import '../../../helpers/app_styles.dart';
class CartViewPrices extends StatelessWidget {
  const CartViewPrices({super.key});
  @override
  Widget build(BuildContext context) {
    double totalPrice = Provider.of<CartController>(context).getTotalPrice();
    double taxes = 5;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Subtotal: \$${totalPrice.toStringAsFixed(2)}', style: AppStyles.font16CustomBlackW500,),
              Text('Taxes: \$${taxes.toStringAsFixed(2)}', style: AppStyles.font14CustomGreyW400,),
            ],
          ),
          const Spacer(),
          Text('Total: \$${(totalPrice + taxes).toStringAsFixed(2)}', style: AppStyles.font16CustomBlackW500,),
        ],
      ),
    );
  }
}
