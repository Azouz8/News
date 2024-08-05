import 'package:flutter/material.dart';

import 'category_header_item.dart';

class CategoryHeaderListView extends StatefulWidget {
  const CategoryHeaderListView({super.key});

  @override
  State<CategoryHeaderListView> createState() => _CategoryHeaderListViewState();
}

class _CategoryHeaderListViewState extends State<CategoryHeaderListView> {
  int activeIndex = 0;
  static List categories = ["Healthy" , "Technology","Finance" , "Arts", "Sports"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: CategoryHeaderItem(
            isActive: activeIndex == index, category: categories[index],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
