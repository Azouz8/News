import 'package:flutter/material.dart';

import 'category_list_view_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => const CategoryListViewItem(),
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemCount: 10),
    );
  }
}