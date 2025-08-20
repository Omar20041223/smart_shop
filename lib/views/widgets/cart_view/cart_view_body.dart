import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart/controllers/cart_controller.dart';
import '../common_widgets/custom_button.dart';
import 'cart_view_list_view.dart';
import 'cart_view_prices.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartController>(
      builder: (BuildContext context, CartController cartController, Widget? child) {
        return cartController.cartItems.isEmpty ? const Center(child: Text('Cart is empty')) : Column(
          children: [
            CartViewListView(cartItems: cartController.cartItems,),
            const CartViewPrices(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(text: 'Checkout', onTap: (){
                Provider.of<CartController>(context, listen: false).clearCart(context);
              },),
            )
          ],
        );
      },
    );
  }
}
