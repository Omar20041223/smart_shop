import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/cart_controller.dart';
import '../../../helpers/app_styles.dart';
import '../../../models/cart_model.dart';

class CartViewListItem extends StatelessWidget {
  const CartViewListItem({
    super.key, required this.cartModel,
  });
  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: Row(
        children: [
          Image.asset(cartModel.image, height: 56, width: 56),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cartModel.title, style: AppStyles.font16CustomBlackW500),
              Text('\$${cartModel.price}', style: AppStyles.font14CustomGreyW400),
            ],
          ),
          const Spacer(),
          IconButton(onPressed: (){
            Provider.of<CartController>(context, listen: false).decrementQuantity(cartModel);
          }, icon: const Icon(Icons.remove)),
          Text('${cartModel.quantity}', style: AppStyles.font16CustomBlackW500),
          IconButton(onPressed: (){
            Provider.of<CartController>(context, listen: false).incrementQuantity(cartModel);
          }, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}

