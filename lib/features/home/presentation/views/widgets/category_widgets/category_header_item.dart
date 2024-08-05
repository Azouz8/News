import 'package:flutter/material.dart';

import 'category_list_view_item_active.dart';
import 'category_list_view_item_inactive.dart';

class CategoryHeaderItem extends StatelessWidget {
  const CategoryHeaderItem({super.key, required this.isActive, required this.category});
  final bool isActive;
  final String category;
  @override
  Widget build(BuildContext context) {
    return isActive? CategoryListViewItemActive(category: category,): CategoryListViewItemInactive(category: category,);
  }
}
