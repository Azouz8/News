import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/data/models/NewsModel.dart';
import 'package:news/features/home/presentation/manager/news_category_cubit/news_category_cubit.dart';

import 'category_header_item.dart';

int activeIndex = 0;

class CategoryHeaderListView extends StatefulWidget {
  const CategoryHeaderListView({super.key});

  @override
  State<CategoryHeaderListView> createState() => _CategoryHeaderListViewState();
}

NewsModel? newsModel;

class _CategoryHeaderListViewState extends State<CategoryHeaderListView> {
  static List categories = [
    "Healthy",
    "Technology",
    "Finance",
    "Arts",
    "Sports"
  ];

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
                BlocProvider.of<NewsCategoryCubit>(context)
                    .fetchNewsCategory(category: categories[activeIndex]);
              });
            }
          },
          child: CategoryHeaderItem(
            isActive: activeIndex == index,
            category: categories[index],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
