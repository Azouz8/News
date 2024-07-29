import 'package:flutter/material.dart';
import 'package:news/features/home/views/widgets/category_widgets/category_item.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
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
          child: CategoryItem(
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
