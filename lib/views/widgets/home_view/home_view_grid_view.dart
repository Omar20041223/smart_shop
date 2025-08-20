import 'package:flutter/material.dart';

import '../../../models/cart_model.dart';
import 'home_view_item.dart';

class HomeViewGridView extends StatelessWidget {
  const HomeViewGridView({super.key, required this.products});
  final List<CartModel> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        childAspectRatio: .90,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return HomeViewItem(product: products[index],);
      },
    );
  }
}
