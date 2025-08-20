import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart/controllers/cart_controller.dart';
import 'package:shop_smart/helpers/extensions.dart';

import '../../../helpers/app_assets.dart';
import '../../../helpers/app_styles.dart';
import '../../../helpers/routes.dart';
import '../../../models/cart_model.dart';

class HomeViewItem extends StatelessWidget {
  const HomeViewItem({super.key, required this.product});

  final CartModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              GoRouter.of(context).push(Routes.descView, extra: product);
            },
            child: Container(
              height: 173,
              width: 173,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Consumer<CartController>(
                builder: (context, cartController, child) {
                  bool isProductInCart = cartController.isItemInCart(product);
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 16,
                          ),
                          child: InkWell(
                            onTap: () {
                              if (!isProductInCart) {
                                Provider.of<CartController>(context, listen: false).addToCart(product);
                                context.showSnackBar(text: 'Product added to cart.');
                              } else {
                                context.showSnackBar(text: 'Product is already in the cart.');
                              }
                            },
                            child: Image.asset(AppAssets.cartIcon, height: 24, width: 24),
                          ),
                        ),
                      ),
                      const Spacer(),
                      if (isProductInCart)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 16,
                            ),
                            child: InkWell(
                              onTap: () {
                                Provider.of<CartController>(context, listen: false).removeFromCart(product);
                                context.showSnackBar(text: 'Product Removed from cart.');
                              },
                              child: const Icon(Icons.close, color: Colors.red, size: 24),
                            ),
                          ),
                        ),
                    ],
                  );
                }
              ),
            ),
          ),
          Text(product.title, style: AppStyles.font16CustomBlackW500),
          Text('\$${product.price}', style: AppStyles.font14CustomGreyW400),
        ],
      ),
    );
  }
}
