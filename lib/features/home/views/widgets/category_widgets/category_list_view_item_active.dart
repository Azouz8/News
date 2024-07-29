import 'package:flutter/material.dart';
import 'package:news/core/constants.dart';
import 'package:news/core/styles.dart';

class CategoryListViewItemActive extends StatelessWidget {
  const CategoryListViewItemActive({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: buttonsGradientColor,
          ),
          child: Text(
            category,
            style: Styles.textStyle12SemiBold
                .copyWith(color: Colors.white, fontSize: 16),
          )),
    );
  }
}