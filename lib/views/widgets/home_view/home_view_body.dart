import 'package:flutter/material.dart';
import '../../../models/cart_model.dart';
import 'home_view_grid_view.dart';
import 'home_view_row_buttons.dart';
import 'home_view_search.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key, this.onSearchTap});
  final void Function()? onSearchTap;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<CartModel> displayedProducts = CartModel.products;

  void _updateFilter(String filter) {
    setState(() {
      if (filter == 'All') {
        displayedProducts = CartModel.products;
      } else if (filter == 'Featured') {
        displayedProducts = CartModel.featuredProducts;
      } else if (filter == 'New') {
        displayedProducts = CartModel.newProducts;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeViewSearch(readOnly: true, onTap: widget.onSearchTap),
        HomeViewRowButtons(onFilterSelected: _updateFilter),
        Expanded(child: HomeViewGridView(products: displayedProducts)),
      ],
    );
  }
}
