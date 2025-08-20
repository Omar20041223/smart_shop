import 'package:flutter/material.dart';
import 'package:shop_smart/views/widgets/home_view/home_view_button.dart';

class HomeViewRowButtons extends StatelessWidget {
  const HomeViewRowButtons({super.key, required this.onFilterSelected});
  final ValueChanged<String> onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        spacing: 12,
        children: [
          HomeViewButton(
            text: 'All',
            onPressed: () => onFilterSelected('All'),
          ),
          HomeViewButton(
            text: 'Featured',
            onPressed: () => onFilterSelected('Featured'),
          ),
          HomeViewButton(
            text: 'New',
            onPressed: () => onFilterSelected('New'),
          ),
        ],
      ),
    );
  }
}
