import 'package:flutter/material.dart';

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
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1.0,
            ),
          ),
          child: Text(
            category,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey)
          )),
    );
  }
}
