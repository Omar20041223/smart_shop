import 'package:flutter/material.dart';

import '../../../models/cart_model.dart';
import '../home_view/home_view_search.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  List<CartModel> displayedProducts = [];
  String query = "";

  void _filterProducts(String value) {
    setState(() {
      query = value;
      if (query.isEmpty) {
        displayedProducts = [];
      } else {
        displayedProducts = CartModel.products.where((product) {
          final titleLower = product.title.toLowerCase();
          final descLower = product.description.toLowerCase();
          final searchLower = query.toLowerCase();
          return titleLower.contains(searchLower) || descLower.contains(searchLower);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeViewSearch(onChanged: _filterProducts),
        Expanded(
          child: query.isEmpty
              ? const Center(
            child: Text(
              "🔍 Start typing to search...",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          )
              : displayedProducts.isEmpty
              ? const Center(
            child: Text(
              "😕 No items found",
              style: TextStyle(fontSize: 16, color: Colors.redAccent),
            ),
          )
              : ListView.builder(
            itemCount: displayedProducts.length,
            itemBuilder: (context, index) {
              final product = displayedProducts[index];
              return ListTile(
                leading: Image.asset(product.image,
                    width: 50, height: 50, fit: BoxFit.cover),
                title: Text(product.title),
                subtitle: Text(product.description),
                trailing: Text("\$${product.price.toStringAsFixed(2)}"),
              );
            },
          ),
        ),
      ],
    );
  }
}
