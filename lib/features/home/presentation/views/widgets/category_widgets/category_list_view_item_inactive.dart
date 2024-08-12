import 'package:flutter/material.dart';
import 'package:news/core/styles.dart';

class CategoryListViewItemInactive extends StatelessWidget {
  const CategoryListViewItemInactive({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // gradient: buttonsGradientColor,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1.0,
            ),
          ),
          child: Text(
            category,
            style: Styles.textStyle12SemiBold
                .copyWith(color: Colors.black, fontSize: 16),
          )),
    );
  }
}
