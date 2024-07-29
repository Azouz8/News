import 'package:flutter/material.dart';
import 'package:news/core/constants.dart';
import 'package:news/core/styles.dart';

import 'category_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_header.dart';
import 'top_headline_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 24,
          ),
          CustomHeader(),
          TopHeadLinesListView(),
          SizedBox(
            height: 24,
          ),
          CategoryListView(),
        ],
      ),
    );
  }
}




