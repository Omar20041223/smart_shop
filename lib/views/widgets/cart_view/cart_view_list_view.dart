import 'package:flutter/material.dart';
import '../../../models/cart_model.dart';
import 'cart_view_list_item.dart';

class CartViewListView extends StatelessWidget {
  const CartViewListView({super.key,required this.cartItems});
  final List<CartModel> cartItems;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CartViewListItem(cartModel: cartItems[index],);
        },
        itemCount: cartItems.length,
      ),
    );
  }
}
