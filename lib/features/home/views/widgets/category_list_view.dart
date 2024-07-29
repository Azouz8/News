import 'package:flutter/material.dart';

import 'category_list_view_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        itemBuilder: (context, index) => const CategoryListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}